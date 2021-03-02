version 1.0

task CovermFilter {
  input {
    String? bam_files
    String? flags
  }
  command <<<
    coverm filter \
      ~{flags} \
      ~{if defined(bam_files) then ("--bam-files " +  '"' + bam_files + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coverm:0.6.0--hc216eb9_0"
  }
  parameter_meta {
    bam_files: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}