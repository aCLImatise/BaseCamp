version 1.0

task Lordeccorrect {
  input {
    Boolean? solidthreshold_solid_kmer
  }
  command <<<
    lordec_correct \
      ~{if (solidthreshold_solid_kmer) then "-s" else ""}
  >>>
  parameter_meta {
    solidthreshold_solid_kmer: "|solid_threshold <solid k-mer abundance threshold>"
  }
  output {
    File out_stdout = stdout()
  }
}