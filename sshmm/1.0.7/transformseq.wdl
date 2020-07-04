version 1.0

task Transformseq {
  input {
    File? fin
    String? format_in
    File? f_out
    String? format_out
    Boolean? seg
    String? subsample
    Boolean? reverse
    Boolean? complement
    String sequence_data_dot_fa
    String sequence_logo_dot_eps
  }
  command <<<
    transformseq \
      ~{sequence_data_dot_fa} \
      ~{sequence_logo_dot_eps} \
      ~{if defined(fin) then ("--fin " +  '"' + fin + '"') else ""} \
      ~{if defined(format_in) then ("--format-in " +  '"' + format_in + '"') else ""} \
      ~{if defined(f_out) then ("--fout " +  '"' + f_out + '"') else ""} \
      ~{if defined(format_out) then ("--format-out " +  '"' + format_out + '"') else ""} \
      ~{true="--seg" false="" seg} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{true="--reverse" false="" reverse} \
      ~{true="--complement" false="" complement}
  >>>
  parameter_meta {
    fin: "Sequence input file (default: stdin)"
    format_in: "Multiple sequence alignment format: (clustal, fasta, plain, msf, genbank, nbrf, nexus, phylip, stockholm, intelligenetics, table, array)"
    f_out: "Output file (default: stdout)"
    format_out: "Multiple sequence alignment output format: (clustal, fasta, plain, intelligenetics, table, array) (Default: fasta)"
    seg: "Mask low complexity regions in protein sequences."
    subsample: "Return a random subsample of the sequences."
    reverse: "reverse sequences"
    complement: "complement DNA sequences"
    sequence_data_dot_fa: ""
    sequence_logo_dot_eps: ""
  }
}