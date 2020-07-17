version 1.0

task LiftOver {
  input {
    String? min_match
    Boolean? gff
    Boolean? gene_pred
    Boolean? sample
    String? bed_plus
    Boolean? positions
    Boolean? has_bin
    Boolean? tab
    Boolean? p_slt
    String? ends
    String? min_blocks
    Boolean? fudge_thick
    Boolean? multiple
    Boolean? no_serial
    Boolean? mincha_int
    Boolean? minsize_t
    Boolean? minsize_q
    Boolean? chain_table
    Boolean? error_help
    String old_file
    String map_dot_chain
    String new_file
    String unmapped
  }
  command <<<
    liftOver \
      ~{old_file} \
      ~{map_dot_chain} \
      ~{new_file} \
      ~{unmapped} \
      ~{if defined(min_match) then ("-minMatch " +  '"' + min_match + '"') else ""} \
      ~{true="-gff" false="" gff} \
      ~{true="-genePred" false="" gene_pred} \
      ~{true="-sample" false="" sample} \
      ~{if defined(bed_plus) then ("-bedPlus " +  '"' + bed_plus + '"') else ""} \
      ~{true="-positions" false="" positions} \
      ~{true="-hasBin" false="" has_bin} \
      ~{true="-tab" false="" tab} \
      ~{true="-pslT" false="" p_slt} \
      ~{if defined(ends) then ("-ends " +  '"' + ends + '"') else ""} \
      ~{if defined(min_blocks) then ("-minBlocks " +  '"' + min_blocks + '"') else ""} \
      ~{true="-fudgeThick" false="" fudge_thick} \
      ~{true="-multiple" false="" multiple} \
      ~{true="-noSerial" false="" no_serial} \
      ~{true="-minChainT" false="" mincha_int} \
      ~{true="-minSizeT" false="" minsize_t} \
      ~{true="-minSizeQ" false="" minsize_q} \
      ~{true="-chainTable" false="" chain_table} \
      ~{true="-errorHelp" false="" error_help}
  >>>
  parameter_meta {
    min_match: "Minimum ratio of bases that must remap. Default 0.95"
    gff: "File is in gff/gtf format.  Note that the gff lines are converted separately.  It would be good to have a separate check after this that the lines that make up a gene model still make a plausible gene after liftOver"
    gene_pred: "- File is in genePred format"
    sample: "- File is in sample format"
    bed_plus: "- File is bed N+ format (i.e. first N fields conform to bed format)"
    positions: "- File is in browser \"position\" format"
    has_bin: "- File has bin value (used only with -bedPlus)"
    tab: "- Separate by tabs rather than space (used only with -bedPlus)"
    p_slt: "- File is in psl format, map target side only"
    ends: "- Lift the first and last N bases of each record and combine the result. This is useful for lifting large regions like BAC end pairs."
    min_blocks: "Minimum ratio of alignment blocks or exons that must map (default 1.00)"
    fudge_thick: "(bed 12 or 12+ only) If thickStart/thickEnd is not mapped, use the closest mapped base.  Recommended if using  -minBlocks."
    multiple: "Allow multiple output regions"
    no_serial: "In -multiple mode, do not put a serial number in the 5th BED column"
    mincha_int: "Minimum chain size in target/query, when mapping to multiple output regions (default 0, 0)"
    minsize_t: "deprecated synonym for -minChainT (ENCODE compat.)"
    minsize_q: "Min matching region size in query with -multiple."
    chain_table: "Used with -multiple, format is db.tablename, to extend chains from net (preserves dups)"
    error_help: "Explain error messages"
    old_file: ""
    map_dot_chain: ""
    new_file: ""
    unmapped: ""
  }
}