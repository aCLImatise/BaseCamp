version 1.0

task NucleosomePrediction.pl {
  input {
    Boolean? raw_binding
    String? _title
    String? sequence_file_format
    String? nucleosomes_concentration_default
    String? temp
    String? prefix_use_default
    Boolean? tab
    Boolean? gxp
  }
  command <<<
    nucleosome_prediction.pl \
      ~{true="-raw_binding" false="" raw_binding} \
      ~{if defined(_title) then ("-t " +  '"' + _title + '"') else ""} \
      ~{if defined(sequence_file_format) then ("-s " +  '"' + sequence_file_format + '"') else ""} \
      ~{if defined(nucleosomes_concentration_default) then ("-c " +  '"' + nucleosomes_concentration_default + '"') else ""} \
      ~{if defined(temp) then ("-temp " +  '"' + temp + '"') else ""} \
      ~{if defined(prefix_use_default) then ("-p " +  '"' + prefix_use_default + '"') else ""} \
      ~{true="-tab" false="" tab} \
      ~{true="-gxp" false="" gxp}
  >>>
  parameter_meta {
    raw_binding: ": Output the raw nucleosome binding log-ratio per basepair instead of the default average occupancy probabilities."
    _title: ":    Title."
    sequence_file_format: ":    Sequence file (fasta format)."
    nucleosomes_concentration_default: ":    Nucleosomes concentration (default: 0.1)."
    temp: ": (Inverse) Temperature scaling (default: 1)."
    prefix_use_default: ":    Prefix of output files to use (default: the process id)."
    tab: ":        Produce a tab delimited output file (otherwise, print output to STDOUT)."
    gxp: ":        Produce a gxp (Genomica project file) output file."
  }
}