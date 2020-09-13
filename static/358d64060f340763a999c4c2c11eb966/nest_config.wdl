version 1.0

task Nestconfig {
  input {
    Boolean? prefix
    Boolean? exec_prefix
    Boolean? libs
    Boolean? cflags
    Boolean? includes
    Boolean? compiler
    Boolean? static_libraries
    Boolean? docdir
    Boolean? datadir
    Boolean? libdir
  }
  command <<<
    nest_config \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (exec_prefix) then "--exec-prefix" else ""} \
      ~{if (libs) then "--libs" else ""} \
      ~{if (cflags) then "--cflags" else ""} \
      ~{if (includes) then "--includes" else ""} \
      ~{if (compiler) then "--compiler" else ""} \
      ~{if (static_libraries) then "--static-libraries" else ""} \
      ~{if (docdir) then "--docdir" else ""} \
      ~{if (datadir) then "--datadir" else ""} \
      ~{if (libdir) then "--libdir" else ""}
  >>>
  parameter_meta {
    prefix: "NEST install prefix for architecture-independent files"
    exec_prefix: "NEST install prefix for architecture-dependent files"
    libs: "print library linking information"
    cflags: "print pre-processor and compiler flags"
    includes: "print includes"
    compiler: "print the compiler used to compile NEST"
    static_libraries: "print \\\"ON\\\" if configured for static libraries, \\\"OFF\\\" otherwise"
    docdir: "print the relative path (to prefix) to the installed documentation"
    datadir: "print the relative path (to prefix) to the installed data"
    libdir: "print the relative path (to prefix) to the installed libraries"
  }
  output {
    File out_stdout = stdout()
  }
}