version 1.0

task Log4cppconfig {
  input {
    String? prefix
    String? affects_other_options
    Boolean? or_
    Boolean? eprefix
    Boolean? cflags
    Boolean? libs
    Boolean? package
    Boolean? bindir
    Boolean? sbindir
    Boolean? libexecdir
    Boolean? datadir
    Boolean? sysconfdir
    Boolean? sharedstatedir
    Boolean? localstatedir
    Boolean? libdir
    Boolean? infodir
    Boolean? mandir
    Boolean? target
    Boolean? host
    Boolean? build
    Boolean? pkgdatadir
    Boolean? pkg_libdir
    Boolean? pkg_includedir
    Boolean? template_version
  }
  command <<<
    log4cpp_config \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(affects_other_options) then ("--exec-prefix " +  '"' + affects_other_options + '"') else ""} \
      ~{if (or_) then "--exec_prefix" else ""} \
      ~{if (eprefix) then "--eprefix" else ""} \
      ~{if (cflags) then "--cflags" else ""} \
      ~{if (libs) then "--libs" else ""} \
      ~{if (package) then "--package" else ""} \
      ~{if (bindir) then "--bindir" else ""} \
      ~{if (sbindir) then "--sbindir" else ""} \
      ~{if (libexecdir) then "--libexecdir" else ""} \
      ~{if (datadir) then "--datadir" else ""} \
      ~{if (sysconfdir) then "--sysconfdir" else ""} \
      ~{if (sharedstatedir) then "--sharedstatedir" else ""} \
      ~{if (localstatedir) then "--localstatedir" else ""} \
      ~{if (libdir) then "--libdir" else ""} \
      ~{if (infodir) then "--infodir" else ""} \
      ~{if (mandir) then "--mandir" else ""} \
      ~{if (target) then "--target" else ""} \
      ~{if (host) then "--host" else ""} \
      ~{if (build) then "--build" else ""} \
      ~{if (pkgdatadir) then "--pkgdatadir" else ""} \
      ~{if (pkg_libdir) then "--pkglibdir" else ""} \
      ~{if (pkg_includedir) then "--pkgincludedir" else ""} \
      ~{if (template_version) then "--template-version" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prefix: "and   change $prefix and $exec-prefix"
    affects_other_options: "(affects all other options)"
    or_: "or..."
    eprefix: "$exec_prefix   /usr/local"
    cflags: "$includedir  unless it is /usr/include"
    libs: "$libdir $LIBS  -llog4cpp  -lnsl"
    package: "$package       log4cpp"
    bindir: "$bindir        /usr/local/bin"
    sbindir: "$sbindir       /usr/local/sbin"
    libexecdir: "$libexecdir    /usr/local/libexec"
    datadir: "$datadir       /usr/local/share"
    sysconfdir: "$sysconfdir    /usr/local/etc"
    sharedstatedir: "$sharedstatedir/usr/local/com"
    localstatedir: "$localstatedir /usr/local/var"
    libdir: "$libdir        /usr/local/lib"
    infodir: "$infodir       /usr/local/share/info"
    mandir: "$mandir        /usr/local/share/man"
    target: "$target"
    host: "$host          x86_64-unknown-linux-gnu"
    build: "$build         x86_64-unknown-linux-gnu"
    pkgdatadir: "$datadir/$package    /usr/local/share/log4cpp"
    pkg_libdir: "$libdir/$package     /usr/local/lib/log4cpp"
    pkg_includedir: "$includedir/$package /usr/local/include/log4cpp"
    template_version: "$template_version     1.0.0"
  }
  output {
    File out_stdout = stdout()
  }
}