## About

Metal is an Apple framework that allows supports high performance graphics. This repository includes a [Lazarus](https://www.lazarus-ide.org) package that supports Metal.

## Installation

 - You will need to have a recent (at least 2.0.6) version of [Lazarus](https://www.lazarus-ide.org/) installed on a MacOS computer.
 - To use Metal you will need MacOS 10.12 (Sierra) or later and a Mac computer that [supports Metal](https://support.apple.com/kb/SP765?locale=en_US) - typically Macs from 2012 and later.
  - From the Lazarus graphical interface, choose Package/OpenPackageFile and select lazmetalcontrol.lpk and install this package.

## Compiling with Lazarus

Once you have installed the Metal Framework package, you can open the example project `MetalTest.lpr` with Lazarus (using the Project/OpenProject menu item). You can execute the project using the Run/Run menu item. 

## Compiling without Lazarus

The package allows you to compile components from the Lazarus graphical user interface. However, it is possible to compile Metal projects directly from the command line using FreePascal. A demo command line project is included:

```
cd example/Sources
fpc -Fu"../../files;../../lazarus/package/utils" MetalKitExample.pas
```

## Links

- The [Metal-Demos](https://github.com/neurolabusc/Metal-Demos) includes several Lazarus projects that use this package.
- [MRIcroGL](https://github.com/rordenlab/MRIcroGL) uses this package.

