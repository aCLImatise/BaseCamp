version 1.0

task TritimapInit {
  input {
    File? working_dir
  }
  command <<<
    tritimap init \
      ~{if defined(working_dir) then ("--working-dir " +  '"' + working_dir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tritimap:0.9.0--pyh3252c3a_0"
  }
  parameter_meta {
    working_dir: "Triti-Map running directory."
  }
  output {
    File out_stdout = stdout()
  }
}