version 1.0

task Neurodocker {
  input {
    String? verbosity
    Boolean? v
    String generate
  }
  command <<<
    neurodocker \
      ~{generate} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  parameter_meta {
    verbosity: ""
    v: ""
    generate: "generate recipes"
  }
  output {
    File out_stdout = stdout()
  }
}