version 1.0

task BedtoolsMaskfasta {
  input {
    Boolean? fi
    Boolean? bed
    File? fo
    Boolean? soft
    Boolean? mc
    Boolean? full_header
  }
  command <<<
    bedtools maskfasta \
      ~{if (fi) then "-fi" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if (fo) then "-fo" else ""} \
      ~{if (soft) then "-soft" else ""} \
      ~{if (mc) then "-mc" else ""} \
      ~{if (full_header) then "-fullHeader" else ""}
  >>>
  parameter_meta {
    fi: "Input FASTA file"
    bed: "BED/GFF/VCF file of ranges to mask in -fi"
    fo: "Output FASTA file"
    soft: "Enforce \\\"soft\\\" masking.\\nMask with lower-case bases, instead of masking with Ns."
    mc: "Replace masking character.\\nUse another character, instead of masking with Ns."
    full_header: "Use full fasta header.\\nBy default, only the word before the first space or tab\\nis used.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_fo = "${in_fo}"
  }
}