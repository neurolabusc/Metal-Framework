{$mode objfpc}
{$modeswitch objectivec1}

unit AppDelegate;
interface
uses
	//MTKRenderer_HelloTriangle,
	//MTKRenderer_BasicBuffers,
	//MTKRenderer_BasicTexturing,
	//MTKRenderer_API,
	//MTKRenderer_Cube,
	MTKRenderer_DepthStencil,
	MetalKit, Metal, CocoaAll, MacOSAll;

type
	TAppController = objcclass(NSObject)
		public
			procedure applicationDidFinishLaunching(notification: NSNotification); message 'applicationDidFinishLaunching:';
		private
   		window: NSWindow;
   		renderView: MTKView;
   		renderer: TMTKRenderer;
 	end;

implementation

procedure TAppController.applicationDidFinishLaunching(notification: NSNotification);
begin
	
	renderView := MTKView.alloc.initWithFrame_device(MacOSAll.CGRect(window.contentView.bounds), MTLCreateSystemDefaultDevice);
	//renderView.setColorPixelFormat(MTLPixelFormatBGRA8Unorm);
	//renderView.setDepthStencilPixelFormat(MTLPixelFormatDepth32Float);

	renderView.setAutoresizingMask(NSViewWidthSizable + NSViewHeightSizable);

	window.contentView.addSubview(renderView);

	//renderView := window.contentView;
 	//renderView.setDevice(MTLCreateSystemDefaultDevice);
 	
 	renderView.setPreferredFramesPerSecond(60);

 	if renderView.device = nil then
 		begin
 			writeln('metal is not supported on this device');
 			halt;
 		end;
 		
 	renderer := TMTKRenderer.alloc.init(renderView);
end;

end.