```
jon at kestrel in ~/tmp/2d9abd1df1285538a38ee4d50767182b on master!
[1] $ stack clean && stack test
derive17-0.0.1: configure (lib + test)
Configuring derive17-0.0.1...
derive17-0.0.1: build (lib + test)
Preprocessing library derive17-0.0.1...
[1 of 1] Compiling Derive17         ( src/Derive17.hs, .stack-work/dist/x86_64-linux/Cabal-1.24.0.0/build/Derive17.o )
Preprocessing test suite 'tests' for derive17-0.0.1...
[1 of 1] Compiling Main             ( tests/Test.hs, .stack-work/dist/x86_64-linux/Cabal-1.24.0.0/build/tests/tests-tmp/Main.o )
             
/home/jon/tmp/2d9abd1df1285538a38ee4d50767182b/tests/Test.hs:1:1: error:
    Exception when trying to run compile-time code:
      Could not convert (Bang,Type) to Type
(Bang NoSourceUnpackedness SourceLazy,ConT Data.Text.Internal.Text)
src/Language/Haskell/Convert.hs:(76,5)-(79,64): Non-exhaustive patterns in function conv
             
CallStack (from HasCallStack):
  error, called at src/Language/Haskell/Convert.hs:20:87 in derive-2.5.25-6jyS0d772bZHapQdVyiucF:Language.Haskell.Convert
    Code: derive makeArbitrary ''NoteListItem
Progress: 1/2
--  While building package derive17-0.0.1 using:
      /home/jon/.stack/setup-exe-cache/x86_64-linux/setup-Simple-Cabal-1.24.0.0-ghc-8.0.1 --builddir=.stack-work/dist/x86_64-linux/Cabal-1.24.0.0 build lib:derive17 test:tests --ghc-options " -ddump-hi -ddump-to-file"
```
