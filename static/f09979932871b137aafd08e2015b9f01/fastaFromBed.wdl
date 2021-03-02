version 1.0

task FastaFromBed {
  input {
    Boolean? fi
    File? fo
    Boolean? bed
    Boolean? name_only
    Boolean? split
    Boolean? tab
    Boolean? bed_out
    Boolean? force_strandedness_occupies
    Boolean? full_header
    Boolean? rna
    String bed_tools
    String get_fast_a
  }
  command <<<
    fastaFromBed \
      ~{bed_tools} \
      ~{get_fast_a} \
      ~{if (fi) then "-fi" else ""} \
      ~{if (fo) then "-fo" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if (name_only) then "-nameOnly" else ""} \
      ~{if (split) then "-split" else ""} \
      ~{if (tab) then "-tab" else ""} \
      ~{if (bed_out) then "-bedOut" else ""} \
      ~{if (force_strandedness_occupies) then "-s" else ""} \
      ~{if (full_header) then "-fullHeader" else ""} \
      ~{if (rna) then "-rna" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0"
  }
  parameter_meta {
    fi: "Input FASTA file"
    fo: "Output file (opt., default is STDOUT"
    bed: "BED/GFF/VCF file of ranges to extract from -fi"
    name_only: "Use the name field for the FASTA header"
    split: "Given BED12 fmt., extract and concatenate the sequences\\nfrom the BED \\\"blocks\\\" (e.g., exons)"
    tab: "Write output in TAB delimited format."
    bed_out: "Report extract sequences in a tab-delimited BED format instead of in FASTA format.\\n- Default is FASTA format."
    force_strandedness_occupies: "Force strandedness. If the feature occupies the antisense,\\nstrand, the sequence will be reverse complemented.\\n- By default, strand information is ignored."
    full_header: "Use full fasta header.\\n- By default, only the word before the first space or tab\\nis used."
    rna: "The FASTA is RNA not DNA. Reverse complementation handled accordingly."
    bed_tools: ""
    get_fast_a: ""
  }
  output {
    File out_stdout = stdout()
    File out_fo = "${in_fo}"
  }
}