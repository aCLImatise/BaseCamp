version 1.0

task ProteinInferencepy {
  input {
    String? threads_to_run
    Boolean? fasta_file_match
    File? name_file_wish
    Boolean? peptide_out
    Boolean? protein_out
    Boolean? strict
    File? tsv
    String? delimiter
    Int? peptide_col
    Int? header
    String? regex
    String? inferred_name
    Boolean? no_inference
    Boolean? no_equality
    String? enzyme
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
    String? fast_a
    String? out
  }
  command <<<
    proteinInference_py \
      ~{fast_a} \
      ~{out} \
      ~{if defined(threads_to_run) then ("-p " +  '"' + threads_to_run + '"') else ""} \
      ~{if (fasta_file_match) then "-f" else ""} \
      ~{if (name_file_wish) then "-o" else ""} \
      ~{if (peptide_out) then "--peptide-out" else ""} \
      ~{if (protein_out) then "--protein-out" else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if defined(tsv) then ("--tsv " +  '"' + tsv + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(peptide_col) then ("--peptide-col " +  '"' + peptide_col + '"') else ""} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""} \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""} \
      ~{if defined(inferred_name) then ("--inferred-name " +  '"' + inferred_name + '"') else ""} \
      ~{if (no_inference) then "--no-inference" else ""} \
      ~{if (no_equality) then "--no-equality" else ""} \
      ~{if defined(enzyme) then ("--enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if defined(enzyme_pattern) then ("--enzyme-pattern " +  '"' + enzyme_pattern + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if (i_baq) then "--ibaq" else ""} \
      ~{if defined(precursors) then ("--precursors " +  '"' + precursors + '"') else ""} \
      ~{if defined(i_baq_function) then ("--ibaq-function " +  '"' + i_baq_function + '"') else ""} \
      ~{if (non_redundant) then "--non-redundant" else ""} \
      ~{if (normalize) then "--normalize" else ""} \
      ~{if (unique_only) then "--unique-only" else ""} \
      ~{if (position) then "--position" else ""} \
      ~{if (case_sensitive) then "--case-sensitive" else ""} \
      ~{if (mod_out) then "--mod-out" else ""} \
      ~{if (modification_site) then "--modification-site" else ""} \
      ~{if defined(mod_col) then ("--mod-col " +  '"' + mod_col + '"') else ""} \
      ~{if defined(mod_col_func) then ("--mod-col-func " +  '"' + mod_col_func + '"') else ""}
  >>>
  parameter_meta {
    threads_to_run: "Threads to run"
    fasta_file_match: "[FASTA], --fasta [FASTA]\\nThe fasta file to match peptides against."
    name_file_wish: "[OUT], --out [OUT]\\nThe name of the file you wish to create with results\\nappended."
    peptide_out: "[PEPTIDE_OUT]\\nThe file to write digested products to."
    protein_out: "[PROTEIN_OUT]\\nThe file to write grouped products to."
    strict: "For numeric operations, fail if types are incorrect\\n(converting NA to a float for instance)."
    tsv: "The delimited file."
    delimiter: "The delimiter for fields."
    peptide_col: "The column of interest (default: 1). Can be a column\\nname."
    header: "The number of headers lines (default: 1)."
    regex: "A perl regular expression determining which parts of\\nthe header to capture."
    inferred_name: "The name you want to assign for protein inference (in\\ncase you are regexing for gene names or something)."
    no_inference: "Do not append proteins inferred from sequences."
    no_equality: "Do not consider Leucine and Isoleucine equal for\\npeptide mapping."
    enzyme: "[{trypsin,lysc,none,argc,gluc,aspn,V8} ...]\\nThe enzyme used to digest the sample."
    enzyme_pattern: "A regex cleavage pattern such as [KR]|{P} to cleave\\nproteins with."
    min: "Minimum cleavage length"
    max: "Maximum cleavage length"
    i_baq: "Provide to append iBAQ values as well (requires\\nprotein inference)."
    precursors: "The column with precursor area (defaults to header\\nlines containing 'Precursor')."
    i_baq_function: "The function to apply to groups of iBAQ values (for\\nmultiple peptide matches). Options: concat, mean,\\nmedian, var, std, sum, count"
    non_redundant: "Use only non-redundant theoretical tryptic peptides\\nfor the iBAQ denominator."
    normalize: "Normalize iBAQ to total intensity of column (useful\\nfor comparing multiple samples)."
    unique_only: "Only group proteins with unique peptides"
    position: "Write the position of the peptide matches."
    case_sensitive: "Treat peptides as case-sensitive (ie separate modified\\npeptides)"
    mod_out: "[MOD_OUT]   The file to write a modification-centric summary to."
    modification_site: "Write the position in the parent protein of the\\nmodification (requires case-sensitive and\\nmodifications being lower-cased)."
    mod_col: "The column containing modification information."
    mod_col_func: "The function to apply. Options: concat, mean, median,\\nvar, std, sum, count\\n"
    fast_a: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_file_wish = "${in_name_file_wish}"
  }
}