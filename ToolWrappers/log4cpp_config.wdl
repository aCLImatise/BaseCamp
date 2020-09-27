version 1.0

task Log4cppconfig {
  input {
    Float? prefix
  }
  command <<<
    log4cpp_config \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    prefix: "and   change $prefix and $exec-prefix\\n--exec-prefix=DIR  (affects all other options)\\n--prefix           $prefix        /usr/local\\n--exec_prefix  or...\\n--eprefix          $exec_prefix   /usr/local\\n--version          $version        1.1\\n--cflags           -I$includedir  unless it is /usr/include\\n--libs             -L$libdir $LIBS  -llog4cpp  -lnsl\\n--package          $package       log4cpp\\n--bindir           $bindir        /usr/local/bin\\n--sbindir          $sbindir       /usr/local/sbin\\n--libexecdir       $libexecdir    /usr/local/libexec\\n--datadir          $datadir       /usr/local/share\\n--sysconfdir       $sysconfdir    /usr/local/etc\\n--sharedstatedir   $sharedstatedir/usr/local/com\\n--localstatedir    $localstatedir /usr/local/var\\n--libdir           $libdir        /usr/local/lib\\n--infodir          $infodir       /usr/local/share/info\\n--mandir           $mandir        /usr/local/share/man\\n--target           $target\\n--host             $host          x86_64-unknown-linux-gnu\\n--build            $build         x86_64-unknown-linux-gnu\\n--pkgdatadir       $datadir/$package    /usr/local/share/log4cpp\\n--pkglibdir        $libdir/$package     /usr/local/lib/log4cpp\\n--pkgincludedir    $includedir/$package /usr/local/include/log4cpp\\n--template-version $template_version     1.0.0\\n--help\\n"
  }
  output {
    File out_stdout = stdout()
  }
}