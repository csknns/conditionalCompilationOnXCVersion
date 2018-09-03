# How to conditionally compile Swift code based on the Xcode version

[![Build Status](https://travis-ci.org/csknns/conditionalCompilationOnXCVersion.svg?branch=master)](https://travis-ci.org/csknns/conditionalCompilationOnXCVersion)

**conditionalCompilationOnXCVersion** is an iOS Xcode project to demonstrate how to conditionally compile Swift code based on the Xcode version

## The problem

You are using an API of a new iOS SDK version, for example a new beta release of the Xcode, but you need your project to build also for the current version of the SDK that does not have the new API.

## The solution

You can include an Active Compilation Condition (a -D Swift compile flag) that this name is dynamically create based on the Xcode version. Xcode already provides the build setting ```XCODE_VERSION_MAJOR``` that resolves to the current Xcode version( e.g. 0900 for Xcode 9).
So you can add an an Active Compilation Condition with name ```XCODE_VERSION_$(XCODE_VERSION_MAJOR)``` that will resolve to the flag ```XCODE_VERSION_0900``` for Xcode 9.

For example in your target's Build Settings: 
![](Documentation/xcode_build_settings.png)

Then you can conditionally compile your code using:

```
#if XCODE_VERSION_0900
statements
#endif
```

## Author

Christos Koninis, christos.koninis@gmail.com
