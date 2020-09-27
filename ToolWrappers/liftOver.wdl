version 1.0

task LiftOver {
  input {
    Int? min_match
    Boolean? gff
    Boolean? gene_pred
    Boolean? sample
    File? bed_plus
    Boolean? positions
    Boolean? has_bin
    Boolean? tab
    Boolean? p_slt
    String? ends
    Int? min_blocks
    Boolean? fudge_thick
    Boolean? multiple
    Boolean? no_serial
    Boolean? mincha_int
    Boolean? minsize_t
    Boolean? minsize_q
    Boolean? chain_table
    Boolean? error_help
    String separately_dot
  }
  command <<<
    liftOver \
      ~{separately_dot} \
      ~{if defined(min_match) then ("-minMatch " +  '"' + min_match + '"') else ""} \
      ~{if (gff) then "-gff" else ""} \
      ~{if (gene_pred) then "-genePred" else ""} \
      ~{if (sample) then "-sample" else ""} \
      ~{if defined(bed_plus) then ("-bedPlus " +  '"' + bed_plus + '"') else ""} \
      ~{if (positions) then "-positions" else ""} \
      ~{if (has_bin) then "-hasBin" else ""} \
      ~{if (tab) then "-tab" else ""} \
      ~{if (p_slt) then "-pslT" else ""} \
      ~{if defined(ends) then ("-ends " +  '"' + ends + '"') else ""} \
      ~{if defined(min_blocks) then ("-minBlocks " +  '"' + min_blocks + '"') else ""} \
      ~{if (fudge_thick) then "-fudgeThick" else ""} \
      ~{if (multiple) then "-multiple" else ""} \
      ~{if (no_serial) then "-noSerial" else ""} \
      ~{if (mincha_int) then "-minChainT" else ""} \
      ~{if (minsize_t) then "-minSizeT" else ""} \
      ~{if (minsize_q) then "-minSizeQ" else ""} \
      ~{if (chain_table) then "-chainTable" else ""} \
      ~{if (error_help) then "-errorHelp" else ""}
  >>>
  parameter_meta {
    min_match: "Minimum ratio of bases that must remap. Default 0.95"
    gff: "File is in gff/gtf format.  Note that the gff lines are converted"
    gene_pred: "- File is in genePred format"
    sample: "- File is in sample format"
    bed_plus: "- File is bed N+ format (i.e. first N fields conform to bed format)"
    positions: "- File is in browser \\\"position\\\" format"
    has_bin: "- File has bin value (used only with -bedPlus)"
    tab: "- Separate by tabs rather than space (used only with -bedPlus)"
    p_slt: "- File is in psl format, map target side only"
    ends: "- Lift the first and last N bases of each record and combine the\\nresult. This is useful for lifting large regions like BAC end pairs."
    min_blocks: "Minimum ratio of alignment blocks or exons that must map\\n(default 1.00)"
    fudge_thick: "(bed 12 or 12+ only) If thickStart/thickEnd is not mapped,\\nuse the closest mapped base.  Recommended if using\\n-minBlocks."
    multiple: "Allow multiple output regions"
    no_serial: "In -multiple mode, do not put a serial number in the 5th BED column"
    mincha_int: "Minimum chain size in target/query, when mapping\\nto multiple output regions (default 0, 0)"
    minsize_t: "deprecated synonym for -minChainT (ENCODE compat.)"
    minsize_q: "Min matching region size in query with -multiple."
    chain_table: "Used with -multiple, format is db.tablename,\\nto extend chains from net (preserves dups)"
    error_help: "Explain error messages"
    separately_dot: "It would be good to have a separate check after this"
  }
  output {
    File out_stdout = stdout()
  }
}