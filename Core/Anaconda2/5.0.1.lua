-- File for anaconda
--
-- Installed using the Anaconda2 commandline installer and pointing it to:
--   /Users/mathomp4/installed/Core/Anaconda2/5.0.1
--

family("Python")

local version = "5.0.1"
local pathdir = pathJoin("Core","Anaconda2",version)
local homedir = os.getenv("HOME")
local installdir = pathJoin(homedir,"installed")
local pkgdir = pathJoin(installdir,pathdir)

-- Setup Modulepath for packages built by this compiler
local mroot = os.getenv("MODULEPATH_ROOT")
local mdir  = pathJoin(mroot,"Python/Anaconda2-5.0.1")
prepend_path("MODULEPATH", mdir)

unsetenv("ESMA_F2PY")

prepend_path("PATH",pathJoin(pkgdir,"bin"))