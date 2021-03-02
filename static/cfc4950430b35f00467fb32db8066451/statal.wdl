version 1.0

task Statal {
  input {
    File? in
    File? compare_set
    File? force_select
    File? matrix
    Boolean? sgc
    Boolean? sgt
    Boolean? ssc
    Boolean? sst
    Boolean? sfc
    Boolean? sft
    Boolean? sident
    Boolean? scol_ident_t
    Int? half_window_size
    Int? gw
    Int? sw
    Int? cw
  }
  command <<<
    statal \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(compare_set) then ("-compareset " +  '"' + compare_set + '"') else ""} \
      ~{if defined(force_select) then ("-forceselect " +  '"' + force_select + '"') else ""} \
      ~{if defined(matrix) then ("-matrix " +  '"' + matrix + '"') else ""} \
      ~{if (sgc) then "-sgc" else ""} \
      ~{if (sgt) then "-sgt" else ""} \
      ~{if (ssc) then "-ssc" else ""} \
      ~{if (sst) then "-sst" else ""} \
      ~{if (sfc) then "-sfc" else ""} \
      ~{if (sft) then "-sft" else ""} \
      ~{if (sident) then "-sident" else ""} \
      ~{if (scol_ident_t) then "-scolidentt" else ""} \
      ~{if defined(half_window_size) then ("-w " +  '"' + half_window_size + '"') else ""} \
      ~{if defined(gw) then ("-gw " +  '"' + gw + '"') else ""} \
      ~{if defined(sw) then ("-sw " +  '"' + sw + '"') else ""} \
      ~{if defined(cw) then ("-cw " +  '"' + cw + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "Input file in several formats (clustal, fasta, nexus, phylip, etc)."
    compare_set: "Input list of paths for the alignments to compare."
    force_select: "Force selection of a given file as reference for being compare with others."
    matrix: "Input file for user-defined similarity matrix (default: Blosum62)."
    sgc: "Print gap score per column from input alignment."
    sgt: "Print accumulated gap scores distribution from input alignment."
    ssc: "Print similarity score per column from input alignment."
    sst: "Print accumulated similarity scores distribution for input alignment."
    sfc: "Print sum-of-pairs score per column for the selected alignment"
    sft: "Print accumulated sum-of-pairs scores distribution for the selected alignment"
    sident: "Print identity scores for sequences in the alignemnt."
    scol_ident_t: "Print general descriptive statistics for column identity scores from input alignemnt."
    half_window_size: "(half) Window size, score of position i is the average of the window (i - n) to (i + n)."
    gw: "(half) Window size only applies to statistics based on Gaps."
    sw: "(half) Window size only applies to statistics based on Similarity."
    cw: "(half) Window size only applies to statistics based on Consistency."
  }
  output {
    File out_stdout = stdout()
  }
}