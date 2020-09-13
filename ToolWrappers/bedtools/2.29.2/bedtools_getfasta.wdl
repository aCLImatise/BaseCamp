version 1.0

task BedtoolsGetfasta {
  input {
    Boolean? fi
    File? fo
    Boolean? bed
    Boolean? name_only
    Boolean? split
    Boolean? tab
    Boolean? force_strandedness_feature
    Boolean? full_header
  }
  command <<<
    bedtools getfasta \
      ~{if (fi) then "-fi" else ""} \
      ~{if (fo) then "-fo" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if (name_only) then "-nameOnly" else ""} \
      ~{if (split) then "-split" else ""} \
      ~{if (tab) then "-tab" else ""} \
      ~{if (force_strandedness_feature) then "-s" else ""} \
      ~{if (full_header) then "-fullHeader" else ""}
  >>>
  parameter_meta {
    fi: "Input FASTA file"
    fo: "Output file (opt., default is STDOUT"
    bed: "BED/GFF/VCF file of ranges to extract from -fi"
    name_only: "Use the name field for the FASTA header"
    split: "Given BED12 fmt., extract and concatenate the sequences\\nfrom the BED \\\"blocks\\\" (e.g., exons)"
    tab: "Write output in TAB delimited format.\\n- Default is FASTA format."
    force_strandedness_feature: "Force strandedness. If the feature occupies the antisense,\\nstrand, the sequence will be reverse complemented.\\n- By default, strand information is ignored."
    full_header: "Use full fasta header.\\n- By default, only the word before the first space or tab\\nis used.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_fo = "${in_fo}"
  }
}