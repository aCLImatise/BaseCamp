version 1.0

task Bamlibspy {
  input {
    Boolean? is_sam
    String sambam_file_inject
  }
  command <<<
    bamlibs_py \
      ~{sambam_file_inject} \
      ~{if (is_sam) then "--is_sam" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bamkit:16.07.26--py_0"
  }
  parameter_meta {
    is_sam: "input is SAM"
    sambam_file_inject: "SAM/BAM file to inject header lines into. If '-' or absent then defaults to stdin."
  }
  output {
    File out_stdout = stdout()
  }
}