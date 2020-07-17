version 1.0

task ProteinInference.py {
  input {
    String? enzyme_pattern
    Int? min
    Int? max
    Boolean? i_baq
    String? precursors
    String? i_baq_function
    Boolean? non_redundant
    Boolean? normalize
    Boolean? unique_only
    Boolean? position
    Boolean? case_sensitive
    Boolean? mod_out
    Boolean? modification_site
    String? mod_col
    String? mod_col_func
    String? p
    Boolean? f
    Boolean? o
    String? fast_a
    String? out
  }
  command <<<
    proteinInference.py \
      ~{fast_a} \
      ~{out} \
      ~{if defined(enzyme_pattern) then ("--enzyme-pattern " +  '"' + enzyme_pattern + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{true="--ibaq" false="" i_baq} \
      ~{if defined(precursors) then ("--precursors " +  '"' + precursors + '"') else ""} \
      ~{if defined(i_baq_function) then ("--ibaq-function " +  '"' + i_baq_function + '"') else ""} \
      ~{true="--non-redundant" false="" non_redundant} \
      ~{true="--normalize" false="" normalize} \
      ~{true="--unique-only" false="" unique_only} \
      ~{true="--position" false="" position} \
      ~{true="--case-sensitive" false="" case_sensitive} \
      ~{true="--mod-out" false="" mod_out} \
      ~{true="--modification-site" false="" modification_site} \
      ~{if defined(mod_col) then ("--mod-col " +  '"' + mod_col + '"') else ""} \
      ~{if defined(mod_col_func) then ("--mod-col-func " +  '"' + mod_col_func + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{true="-f" false="" f} \
      ~{true="-o" false="" o}
  >>>
  parameter_meta {
    enzyme_pattern: "A regex cleavage pattern such as [KR]|{P} to cleave proteins with."
    min: "Minimum cleavage length"
    max: "Maximum cleavage length"
    i_baq: "Provide to append iBAQ values as well (requires protein inference)."
    precursors: "The column with precursor area (defaults to header lines containing 'Precursor')."
    i_baq_function: "The function to apply to groups of iBAQ values (for multiple peptide matches). Options: concat, mean, median, var, std, sum, count"
    non_redundant: "Use only non-redundant theoretical tryptic peptides for the iBAQ denominator."
    normalize: "Normalize iBAQ to total intensity of column (useful for comparing multiple samples)."
    unique_only: "Only group proteins with unique peptides"
    position: "Write the position of the peptide matches."
    case_sensitive: "Treat peptides as case-sensitive (ie separate modified peptides)"
    mod_out: "[MOD_OUT]   The file to write a modification-centric summary to."
    modification_site: "Write the position in the parent protein of the modification (requires case-sensitive and modifications being lower-cased)."
    mod_col: "The column containing modification information."
    mod_col_func: "The function to apply. Options: concat, mean, median, var, std, sum, count"
    p: ""
    f: ""
    o: ""
    fast_a: ""
    out: ""
  }
}