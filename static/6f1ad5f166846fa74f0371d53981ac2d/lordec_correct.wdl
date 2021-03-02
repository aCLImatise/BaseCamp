version 1.0

task Lordeccorrect {
  input {
    File? short_reads
    Int? corrected_read_file
  }
  command <<<
    lordec_correct \
      ~{if defined(short_reads) then ("--short_reads " +  '"' + short_reads + '"') else ""} \
      ~{if defined(corrected_read_file) then ("--corrected_read_file " +  '"' + corrected_read_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    short_reads: "<short read FASTA/Q file(s)>"
    corrected_read_file: "|solid_threshold <solid k-mer abundance threshold>"
  }
  output {
    File out_stdout = stdout()
  }
}