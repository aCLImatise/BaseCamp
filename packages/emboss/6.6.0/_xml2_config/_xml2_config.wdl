version 1.0

task Xml2config {
  input {
    String? prefix
    String? exec_prefix
    Boolean? libs
    Boolean? cflags
    Boolean? modules
    Int xml_two_config
  }
  command <<<
    _xml2_config \
      ~{xml_two_config} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(exec_prefix) then ("--exec-prefix " +  '"' + exec_prefix + '"') else ""} \
      ~{if (libs) then "--libs" else ""} \
      ~{if (cflags) then "--cflags" else ""} \
      ~{if (modules) then "--modules" else ""}
  >>>
  parameter_meta {
    prefix: "change libxml prefix [default /usr/local]"
    exec_prefix: "change libxml exec prefix [default /usr/local]"
    libs: "print library linking information\\nadd --dynamic to print only shared libraries"
    cflags: "print pre-processor and compiler flags"
    modules: "module support enabled"
    xml_two_config: ""
  }
  output {
    File out_stdout = stdout()
  }
}