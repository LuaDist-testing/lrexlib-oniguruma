dependencies = {
  "lua >= 5.1",
}
external_dependencies = {
  PCRE = {
    header = "pcre.h",
    library = "pcre",
  },
}
description = {
  summary = "Regular expression library binding (PCRE flavour).",
  detailed = "      Lrexlib is a regular expression library for Lua 5.1, which\
      provides bindings for several regular expression libraries.\
      This rock provides the PCRE bindings.\
    ",
  homepage = "http://github.com/rrthomas/lrexlib",
  license = "MIT/X11",
}
package = "Lrexlib-PCRE"
source = {
  url = "https://github.com/downloads/rrthomas/lrexlib/lrexlib-2.7.0.zip",
  md5 = "9cc78294a2841a80fd6b4cb80914d186",
}
build = {
  modules = {
    rex_pcre = {
      defines = {
        "VERSION=\"2.7.0\"",
      },
      libdirs = {
        "$(PCRE_LIBDIR)",
      },
      libraries = {
        "pcre",
      },
      incdirs = {
        "$(PCRE_INCDIR)",
      },
      sources = {
        "src/common.c",
        "src/pcre/lpcre.c",
        "src/pcre/lpcre_f.c",
      },
    },
  },
  type = "builtin",
}
version = "2.7.0-1"
