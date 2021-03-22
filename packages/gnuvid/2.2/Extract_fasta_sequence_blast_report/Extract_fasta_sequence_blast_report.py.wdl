version 1.0

task ExtractFastaSequenceBlastReportpy {
  input {
    Boolean? v
    String output_folder
    String directory_path
  }
  command <<<
    Extract_fasta_sequence_blast_report_py \
      ~{output_folder} \
      ~{directory_path} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gnuvid:2.2--0"
  }
  parameter_meta {
    v: ""
    output_folder: "output folder name & quality report prefix"
    directory_path: "path to directory of blast reports"
  }
  output {
    File out_stdout = stdout()
  }
}