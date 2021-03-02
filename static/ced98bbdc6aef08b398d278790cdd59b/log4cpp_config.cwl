class: CommandLineTool
id: log4cpp_config.cwl
inputs:
- id: in_prefix
  doc: and   change $prefix and $exec-prefix
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_affects_other_options
  doc: (affects all other options)
  type: string?
  inputBinding:
    prefix: --exec-prefix
- id: in_or_
  doc: or...
  type: boolean?
  inputBinding:
    prefix: --exec_prefix
- id: in_eprefix
  doc: $exec_prefix   /usr/local
  type: boolean?
  inputBinding:
    prefix: --eprefix
- id: in_cflags
  doc: $includedir  unless it is /usr/include
  type: boolean?
  inputBinding:
    prefix: --cflags
- id: in_libs
  doc: $libdir $LIBS  -llog4cpp  -lnsl
  type: boolean?
  inputBinding:
    prefix: --libs
- id: in_package
  doc: $package       log4cpp
  type: boolean?
  inputBinding:
    prefix: --package
- id: in_bindir
  doc: $bindir        /usr/local/bin
  type: boolean?
  inputBinding:
    prefix: --bindir
- id: in_sbindir
  doc: $sbindir       /usr/local/sbin
  type: boolean?
  inputBinding:
    prefix: --sbindir
- id: in_libexecdir
  doc: $libexecdir    /usr/local/libexec
  type: boolean?
  inputBinding:
    prefix: --libexecdir
- id: in_datadir
  doc: $datadir       /usr/local/share
  type: boolean?
  inputBinding:
    prefix: --datadir
- id: in_sysconfdir
  doc: $sysconfdir    /usr/local/etc
  type: boolean?
  inputBinding:
    prefix: --sysconfdir
- id: in_sharedstatedir
  doc: $sharedstatedir/usr/local/com
  type: boolean?
  inputBinding:
    prefix: --sharedstatedir
- id: in_localstatedir
  doc: $localstatedir /usr/local/var
  type: boolean?
  inputBinding:
    prefix: --localstatedir
- id: in_libdir
  doc: $libdir        /usr/local/lib
  type: boolean?
  inputBinding:
    prefix: --libdir
- id: in_infodir
  doc: $infodir       /usr/local/share/info
  type: boolean?
  inputBinding:
    prefix: --infodir
- id: in_mandir
  doc: $mandir        /usr/local/share/man
  type: boolean?
  inputBinding:
    prefix: --mandir
- id: in_target
  doc: $target
  type: boolean?
  inputBinding:
    prefix: --target
- id: in_host
  doc: $host          x86_64-unknown-linux-gnu
  type: boolean?
  inputBinding:
    prefix: --host
- id: in_build
  doc: $build         x86_64-unknown-linux-gnu
  type: boolean?
  inputBinding:
    prefix: --build
- id: in_pkgdatadir
  doc: $datadir/$package    /usr/local/share/log4cpp
  type: boolean?
  inputBinding:
    prefix: --pkgdatadir
- id: in_pkg_libdir
  doc: $libdir/$package     /usr/local/lib/log4cpp
  type: boolean?
  inputBinding:
    prefix: --pkglibdir
- id: in_pkg_includedir
  doc: $includedir/$package /usr/local/include/log4cpp
  type: boolean?
  inputBinding:
    prefix: --pkgincludedir
- id: in_template_version
  doc: $template_version     1.0.0
  type: boolean?
  inputBinding:
    prefix: --template-version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- log4cpp-config
