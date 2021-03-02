version 1.0

task RunCA {
  input {
    Directory? use_dir_working
    String? use_prefix_prefix
    File? read_options_specifications
    Boolean? version
    Boolean? options
    String frg
  }
  command <<<
    runCA \
      ~{frg} \
      ~{if defined(use_dir_working) then ("-d " +  '"' + use_dir_working + '"') else ""} \
      ~{if defined(use_prefix_prefix) then ("-p " +  '"' + use_prefix_prefix + '"') else ""} \
      ~{if defined(read_options_specifications) then ("-s " +  '"' + read_options_specifications + '"') else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_dir_working: "Use <dir> as the working directory.  Required"
    use_prefix_prefix: "Use <prefix> as the output prefix.  Required"
    read_options_specifications: "Read options from the specifications file <specfile>.\\n<specfile> can also be one of the following key words:\\n[no]OBT - run with[out] OBT\\nnoVec   - run with OBT but without Vector"
    version: "Version information"
    options: "Describe specFile options, and show default values"
    frg: ""
  }
  output {
    File out_stdout = stdout()
    File out_read_options_specifications = "${in_read_options_specifications}"
  }
}