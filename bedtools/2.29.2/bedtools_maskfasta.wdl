version 1.0

task BedtoolsMaskfasta {
  input {
    Boolean? fi
    Boolean? bed
    Boolean? fo
    Boolean? soft
    Boolean? mc
    Boolean? full_header
  }
  command <<<
    bedtools maskfasta \
      ~{true="-fi" false="" fi} \
      ~{true="-bed" false="" bed} \
      ~{true="-fo" false="" fo} \
      ~{true="-soft" false="" soft} \
      ~{true="-mc" false="" mc} \
      ~{true="-fullHeader" false="" full_header}
  >>>
  parameter_meta {
    fi: "Input FASTA file"
    bed: "BED/GFF/VCF file of ranges to mask in -fi"
    fo: "Output FASTA file"
    soft: "Enforce \"soft\" masking. Mask with lower-case bases, instead of masking with Ns."
    mc: "Replace masking character. Use another character, instead of masking with Ns."
    full_header: "Use full fasta header. By default, only the word before the first space or tab is used."
  }
}