version 1.0

task LorikeetSummarize {
  input {
    String? bam_files
    String? flags
  }
  command <<<
    lorikeet summarize \
      ~{flags} \
      ~{if defined(bam_files) then ("--bam-files " +  '"' + bam_files + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/lorikeet-genome:0.5.0--h9eda3c7_0"
  }
  parameter_meta {
    bam_files: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}