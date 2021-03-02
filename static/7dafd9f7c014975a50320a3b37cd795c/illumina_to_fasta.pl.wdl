version 1.0

task IlluminaToFastapl {
  input {
    Boolean? format_is_qseqtxt
  }
  command <<<
    illumina_to_fasta_pl \
      ~{if (format_is_qseqtxt) then "-a" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format_is_qseqtxt: "format is qseq.txt"
  }
  output {
    File out_stdout = stdout()
  }
}