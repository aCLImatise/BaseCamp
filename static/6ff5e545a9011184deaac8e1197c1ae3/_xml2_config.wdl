version 1.0

task _xml2Config {
  input {
    String? prefix
    String? exec_prefix
    Boolean? libs
    Boolean? cflags
    Boolean? modules
    String xml_two_config
    String? option
  }
  command <<<
    _xml2-config \
      ~{xml_two_config} \
      ~{option} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(exec_prefix) then ("--exec-prefix " +  '"' + exec_prefix + '"') else ""} \
      ~{true="--libs" false="" libs} \
      ~{true="--cflags" false="" cflags} \
      ~{true="--modules" false="" modules}
  >>>
  parameter_meta {
    prefix: "change libxml prefix [default /tmp/tmpa5dnn8jt]"
    exec_prefix: "change libxml exec prefix [default /tmp/tmpa5dnn8jt]"
    libs: "print library linking information add --dynamic to print only shared libraries"
    cflags: "print pre-processor and compiler flags"
    modules: "module support enabled"
    xml_two_config: ""
    option: ""
  }
}