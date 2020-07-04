version 1.0

task GaasNcbiGetGenomeTree.pl {
  input {
    String? _taxid_specify
    Boolean? for_debugging_purpose
    Boolean? quiet_avoid_printing
    String? outfile
  }
  command <<<
    gaas_ncbi_get_genome_tree.pl \
      ~{if defined(_taxid_specify) then ("-t " +  '"' + _taxid_specify + '"') else ""} \
      ~{true="-v" false="" for_debugging_purpose} \
      ~{true="-q" false="" quiet_avoid_printing} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    _taxid_specify: "<--taxid> To specify a specific taxid. Allow to focus on a specific part of the tree of life."
    for_debugging_purpose: "For debugging purpose."
    quiet_avoid_printing: "Quiet to avoid printing the progress on STDOUT"
    outfile: "The name of the output file. By default the output is the standard output"
  }
}