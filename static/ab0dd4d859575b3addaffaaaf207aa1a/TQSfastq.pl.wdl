version 1.0

task TQSfastqpl {
  input {
    Boolean? file_filenames_corresponding
    Boolean? ascii_offset_standard
  }
  command <<<
    TQSfastq_pl \
      ~{if (file_filenames_corresponding) then "-f" else ""} \
      ~{if (ascii_offset_standard) then "-e" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_filenames_corresponding: "File of filenames corresponding to fasta/fastq files with reads to interrogate\\n-q Phred quality score threshold (bases less than -q XX will be clipped, default -q 10, optional)\\n-n Number of consecutive -q 10 bases (default -n 30, optional)"
    ascii_offset_standard: "ASCII offset (33=standard 64=illumina, default -n 33, optional)"
  }
  output {
    File out_stdout = stdout()
  }
}