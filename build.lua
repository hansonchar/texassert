-- luacheck:ignore 111
module = "texassert"

sourcefiledir = "source"
-- docfiledir    = "doc"
typesetfiles  = {"*.dtx"}
-- typesetfiles  = {"*.tex"}
packtdszip    = true -- recommended for "tree" layouts
tdsdirs = {tex = "tex"}
-- tdsroot = "generic"

installfiles = {"*.sty", "*.tex"}
tdslocations = {"tex/plain/texassert/*.tex"}

--[==================[
      VERSION DATA
--]==================]

changeslisting = nil
do
    local f = assert(io.open("CHANGES.md", "r"))
    changeslisting = f:read("*all")
    f:close()
end

currentchanges = string.match(changeslisting, "(## %S+ %(.-%).-)%s*## %S+ %(.-%)")
pkgversion = string.match(changeslisting, "## v(%S+) %(.-%)")

--[=================[
      CTAN UPLOAD
--]=================]
uploadconfig = {
    version = pkgversion,
    -- announcement = currentchanges,
    announcement = "Initial upload of texassert",
    author = "Hanson Char",
    uploader = "Hanson Char",
    email = "hanson.cha@gmail.com",
    pkg = "texassert",
    license = "lppl1.3",
    summary = "Assertion library for unit testing in plain TeX",
    -- https://ctan.org/tex-archive/macros/plain/contrib
    description = "Assertion library for unit testing in plain TeX",
    ctanPath = "macros/plain/contrib/texassert",
    update = false,
    repository = "https://github.com/hansonchar/texassert",
    bugtracker = "https://github.com/hansonchar/texassert/issues"
}
