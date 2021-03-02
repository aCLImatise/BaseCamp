version 1.0

task NucleosomePredictionpl {
  input {
    Boolean? raw_binding
    String? _title
    File? sequence_file_fasta
    Int? nucleosomes_concentration_default
    Int? temp
    String? prefix_use_default
    File? tab
    File? gxp
  }
  command <<<
    nucleosome_prediction_pl \
      ~{if (raw_binding) then "-raw_binding" else ""} \
      ~{if defined(_title) then ("-t " +  '"' + _title + '"') else ""} \
      ~{if defined(sequence_file_fasta) then ("-s " +  '"' + sequence_file_fasta + '"') else ""} \
      ~{if defined(nucleosomes_concentration_default) then ("-c " +  '"' + nucleosomes_concentration_default + '"') else ""} \
      ~{if defined(temp) then ("-temp " +  '"' + temp + '"') else ""} \
      ~{if defined(prefix_use_default) then ("-p " +  '"' + prefix_use_default + '"') else ""} \
      ~{if (tab) then "-tab" else ""} \
      ~{if (gxp) then "-gxp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    raw_binding: ": Output the raw nucleosome binding log-ratio per basepair instead of the default average occupancy probabilities."
    _title: ":    Title."
    sequence_file_fasta: ":    Sequence file (fasta format)."
    nucleosomes_concentration_default: ":    Nucleosomes concentration (default: 0.1)."
    temp: ": (Inverse) Temperature scaling (default: 1)."
    prefix_use_default: ":    Prefix of output files to use (default: the process id)."
    tab: ":        Produce a tab delimited output file (otherwise, print output to STDOUT)."
    gxp: ":        Produce a gxp (Genomica project file) output file."
  }
  output {
    File out_stdout = stdout()
    File out_tab = "${in_tab}"
    File out_gxp = "${in_gxp}"
  }
}