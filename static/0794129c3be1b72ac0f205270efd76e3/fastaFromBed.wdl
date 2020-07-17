version 1.0

task FastaFromBed {
  input {
    Boolean? fi
    Boolean? fo
    Boolean? bed
    Boolean? name_only
    Boolean? split
    Boolean? tab
    Boolean? force_strandedness_feature
    Boolean? full_header
    String bed_tools
    String get_fast_a
  }
  command <<<
    fastaFromBed \
      ~{bed_tools} \
      ~{get_fast_a} \
      ~{true="-fi" false="" fi} \
      ~{true="-fo" false="" fo} \
      ~{true="-bed" false="" bed} \
      ~{true="-nameOnly" false="" name_only} \
      ~{true="-split" false="" split} \
      ~{true="-tab" false="" tab} \
      ~{true="-s" false="" force_strandedness_feature} \
      ~{true="-fullHeader" false="" full_header}
  >>>
  parameter_meta {
    fi: "Input FASTA file"
    fo: "Output file (opt., default is STDOUT"
    bed: "BED/GFF/VCF file of ranges to extract from -fi"
    name_only: "Use the name field for the FASTA header"
    split: "Given BED12 fmt., extract and concatenate the sequences from the BED \"blocks\" (e.g., exons)"
    tab: "Write output in TAB delimited format. - Default is FASTA format."
    force_strandedness_feature: "Force strandedness. If the feature occupies the antisense, strand, the sequence will be reverse complemented. - By default, strand information is ignored."
    full_header: "Use full fasta header. - By default, only the word before the first space or tab  is used."
    bed_tools: ""
    get_fast_a: ""
  }
}