#!/usr/bin/env texlua

-- luacheck:ignore 111 112 113
module = "texassert"

-- TDS-based installation
-- installfiles = {}
-- sourcefiles = {}
-- installfiles = {"*.sty", "*.tex"}
-- unpackfiles = {}
tdsdirs = {tex = "tex"}
-- flatten = true

-- packtdszip = true
-- recordstatus = true

-- ctanpkg = module

-- typesetdir = "doc"
-- typesetexe = "pdftex"
-- docfiles = { "txassert-doc.tex" }

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

-- local function prequire(m) -- from: https://stackoverflow.com/a/17878208
--     local ok, err = pcall(require, m)
--     if not ok then
--         return nil, err
--     end
--     return err
-- end
-- prequire("l3build-wspr.lua")
