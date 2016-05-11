# Xcode

`~/dev/sample$ xcode-select -p
/Users/hyde/Desktop/Xcode721.app/Contents/Developer`

# Latest theos

```
~/dev/sample$ export THEOS=/opt/theos
~/dev/sample$ make clean
==> Cleaning…
~/dev/sample$ make
> Making all for tweak sample…
==> Preprocessing Tweak.xm…
==> Compiling Tweak.xm (armv7)…
==> Linking tweak sample (armv7)…
Undefined symbols for architecture armv7:
  "_WTFCrash", referenced from:
      CppClass::isTrue() in Tweak.xm.db9210b7.o
  "_WTFReportAssertionFailure", referenced from:
      CppClass::isTrue() in Tweak.xm.db9210b7.o
ld: symbol(s) not found for architecture armv7
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make[3]: *** [/Users/hyde/dev/sample/.theos/obj/debug/armv7/sample.dylib] Error 1
make[2]: *** [/Users/hyde/dev/sample/.theos/obj/debug/armv7/sample.dylib] Error 2
make[1]: *** [internal-library-all_] Error 2
make: *** [sample.all.tweak.variables] Error 2
```

# older theos

```
~/dev/sample$ export THEOS=/opt/theos.older
~/dev/sample$ make clean
rm -rf ./obj
rm -rf "/Users/hyde/dev/sample/_"
~/dev/sample$ make
Making all for tweak sample...
 Preprocessing Tweak.xm...
 Compiling Tweak.xm...
 Linking tweak sample...
 Stripping sample...
 Signing sample...
```
