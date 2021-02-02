version 1.0

task Kronos {
  input {
    File? working_dir
    Boolean? v
  }
  command <<<
    kronos \
      ~{if defined(working_dir) then ("--working_dir " +  '"' + working_dir + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    working_dir: "path to the working dir"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}