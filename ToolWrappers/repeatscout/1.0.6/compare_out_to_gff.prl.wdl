version 1.0

task Compareouttogffprl {
  input {
    Boolean? gff
    File? fasta_formatted_file
    Boolean? threshold
    Boolean? over
    Boolean? instances
    String bugs
  }
  command <<<
    compare_out_to_gff_prl \
      ~{bugs} \
      ~{if (gff) then "--gff" else ""} \
      ~{if (fasta_formatted_file) then "--f" else ""} \
      ~{if (threshold) then "--threshold" else ""} \
      ~{if (over) then "--over" else ""} \
      ~{if (instances) then "--instances" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gff: "A GFF-formatted file of features. More than one file may be specified\\nwith multiple --gff options."
    fasta_formatted_file: "A fasta formatted file. If this is given, then sequences that are under\\n(over) the overlap threshold will be in the output. This is a sequence\\nfilter."
    threshold: "The maximum (minimum) amount of overlap tolerated by any one type of\\nrepeat."
    over: "Determines if the threshold is a minimum or a maximum (defaults to\\nmaximum; including --over makes it a minimum)"
    instances: "Determines how the overlap calculation is done. If this is not\\nspecified, the overlap is calculated by bases: if 40 bases of a repeat\\nelement overlaps a feature in one of the GFF files, it is counted as 40\\nbases. The sum is taken over all features and all repeats of a given\\ntype and divided by the total length of the repeat. If --instances is\\nspecified, the \\\"overlap\\\" is considered to be the number of instances of\\na given type that overlap any feature, divided by the total number of\\ninstances of that type."
    bugs: "None known. This program is remarkably slow, though, and could be sped\\nup significantly with a very easy fix.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_fasta_formatted_file = "${in_fasta_formatted_file}"
  }
}