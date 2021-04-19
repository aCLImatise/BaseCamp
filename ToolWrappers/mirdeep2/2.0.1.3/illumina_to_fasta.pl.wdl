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
    docker: "quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0"
  }
  parameter_meta {
    format_is_qseqtxt: "format is qseq.txt"
  }
  output {
    File out_stdout = stdout()
  }
}