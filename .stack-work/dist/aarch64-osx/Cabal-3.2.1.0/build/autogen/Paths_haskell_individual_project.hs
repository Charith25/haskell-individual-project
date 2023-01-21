{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_haskell_individual_project (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/charithkuchipudi/Downloads/social_network_haskell-main 4/Haskell_Proj_210785869/haskell-individual-project/.stack-work/install/aarch64-osx/17b6d785109485a54fbe261050716854b166a5a650fba3c2a6a7fa73e65df9bf/8.10.7/bin"
libdir     = "/Users/charithkuchipudi/Downloads/social_network_haskell-main 4/Haskell_Proj_210785869/haskell-individual-project/.stack-work/install/aarch64-osx/17b6d785109485a54fbe261050716854b166a5a650fba3c2a6a7fa73e65df9bf/8.10.7/lib/aarch64-osx-ghc-8.10.7/haskell-individual-project-0.1.0.0-4UGmj00oO5ZFKsdL1eVZbv"
dynlibdir  = "/Users/charithkuchipudi/Downloads/social_network_haskell-main 4/Haskell_Proj_210785869/haskell-individual-project/.stack-work/install/aarch64-osx/17b6d785109485a54fbe261050716854b166a5a650fba3c2a6a7fa73e65df9bf/8.10.7/lib/aarch64-osx-ghc-8.10.7"
datadir    = "/Users/charithkuchipudi/Downloads/social_network_haskell-main 4/Haskell_Proj_210785869/haskell-individual-project/.stack-work/install/aarch64-osx/17b6d785109485a54fbe261050716854b166a5a650fba3c2a6a7fa73e65df9bf/8.10.7/share/aarch64-osx-ghc-8.10.7/haskell-individual-project-0.1.0.0"
libexecdir = "/Users/charithkuchipudi/Downloads/social_network_haskell-main 4/Haskell_Proj_210785869/haskell-individual-project/.stack-work/install/aarch64-osx/17b6d785109485a54fbe261050716854b166a5a650fba3c2a6a7fa73e65df9bf/8.10.7/libexec/aarch64-osx-ghc-8.10.7/haskell-individual-project-0.1.0.0"
sysconfdir = "/Users/charithkuchipudi/Downloads/social_network_haskell-main 4/Haskell_Proj_210785869/haskell-individual-project/.stack-work/install/aarch64-osx/17b6d785109485a54fbe261050716854b166a5a650fba3c2a6a7fa73e65df9bf/8.10.7/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "haskell_individual_project_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "haskell_individual_project_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "haskell_individual_project_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "haskell_individual_project_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "haskell_individual_project_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "haskell_individual_project_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
