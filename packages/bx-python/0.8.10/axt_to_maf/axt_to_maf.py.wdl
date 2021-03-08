version 1.0

task AxtToMafpy {
  input {
    Boolean? silent
  }
  command <<<
    axt_to_maf_py \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0"
  }
  parameter_meta {
    silent: ": prevents stats report"
  }
  output {
    File out_stdout = stdout()
  }
}