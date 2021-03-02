version 1.0

task VtoolsCompare {
  input {
    Boolean? union
    Boolean? intersection
    Boolean? difference
    Array[String] expression
    String? mode
    Boolean? samples
    String? verbosity
    String tables
  }
  command <<<
    vtools compare \
      ~{tables} \
      ~{if (union) then "--union" else ""} \
      ~{if (intersection) then "--intersection" else ""} \
      ~{if (difference) then "--difference" else ""} \
      ~{if defined(expression) then ("--expression " +  '"' + expression + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (samples) then "--samples" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    union: "[TABLE [DESC ...]]\\nPrint the number (default) or save variants with TYPE\\nin the TYPE of any of the tables (T1 | T2 | T3 ...) to\\nTABLE if a name is specified. An optional message can\\nbe added to describe the table."
    intersection: "[TABLE [DESC ...]]\\nPrint the number (default) or save variants with TYPE\\nin the TYPE of all the tables (T1 & T2 & T3 ...) to\\nTABLE if a name is specified. An optional message can\\nbe added to describe the table."
    difference: "[TABLE [DESC ...]]\\nPrint the number (default) or save variants with TYPE\\nin the TYPE of the first, but not in the TYPE of\\nothers (T1 - T2 - T3...) to TABLE if a name is\\nspecified. An optional message can be added to\\ndescribe the table."
    expression: "Evaluate a set expression with table names\\nrepresenting variants in these tables. Operators |\\n(or), & (and), - (difference) and ^ (A or B but not\\nboth) are allowed. The results will be saved to table\\nif the result is assigned to a name (e.g. --expression\\n'D=A-(B&C)'). The table names in the expression can be\\nwritten as _1, _2 etc if tables are listed before the\\noption, and be used to populate the list of tables if\\nit was left unspecified."
    mode: "Compare variants (chr, pos, ref, alt), site (chr,\\npos), or genotype (chr, pos, ref, alt, GT for a\\nspecified sample) of variants. The results are\\nvariants from all input tables that match specified\\ncondition. The default comparison TYPE compares\\nvariants in input variant tables. For the comparison\\nof sites, the position of all variants are collected\\nand compared, and variants (in all tables) with site\\nin resulting set of sites are returned. For the\\ncomparison of genotypes, the genotypes of specified\\nsamples for all variants (see option --samples) are\\ncollected and compared, and variants with genotype in\\nresulting set of genotypes are returned. The results\\nof genotype comparisons are affected by runtime option\\ntreat_missing_as_wildtype because items with missing\\ngenotype (chr, pos, ref, alt, NULL) are excluded if\\ntreat_missing_as_wildtype is false (default), and are\\ntreated as (chr, pos, ref, alt, 0) otherwise. The\\ndefault comparison type is variant, or genotype if\\noption --samples is specified."
    samples: "[SAMPLES [SAMPLES ...]]\\nA list of sample names corresponding to the variant\\ntables to compare. An error will be raised if a sample\\nname matches no or multiple samples or if a sample\\ndoes not have any genotype."
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1).\\n"
    tables: "variant tables to compare. Wildcard characters * and ?\\ncan be used to specify multiple tables. A table name\\nwill be automatically repeated for the comparison of\\ngenotype of multiple samples if only one table is\\nspecified."
  }
  output {
    File out_stdout = stdout()
  }
}