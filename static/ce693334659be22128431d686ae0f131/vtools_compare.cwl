class: CommandLineTool
id: vtools_compare.cwl
inputs:
- id: in_union
  doc: "[TABLE [DESC ...]]\nPrint the number (default) or save variants with TYPE\n\
    in the TYPE of any of the tables (T1 | T2 | T3 ...) to\nTABLE if a name is specified.\
    \ An optional message can\nbe added to describe the table."
  type: boolean?
  inputBinding:
    prefix: --union
- id: in_intersection
  doc: "[TABLE [DESC ...]]\nPrint the number (default) or save variants with TYPE\n\
    in the TYPE of all the tables (T1 & T2 & T3 ...) to\nTABLE if a name is specified.\
    \ An optional message can\nbe added to describe the table."
  type: boolean?
  inputBinding:
    prefix: --intersection
- id: in_difference
  doc: "[TABLE [DESC ...]]\nPrint the number (default) or save variants with TYPE\n\
    in the TYPE of the first, but not in the TYPE of\nothers (T1 - T2 - T3...) to\
    \ TABLE if a name is\nspecified. An optional message can be added to\ndescribe\
    \ the table."
  type: boolean?
  inputBinding:
    prefix: --difference
- id: in_expression
  doc: "Evaluate a set expression with table names\nrepresenting variants in these\
    \ tables. Operators |\n(or), & (and), - (difference) and ^ (A or B but not\nboth)\
    \ are allowed. The results will be saved to table\nif the result is assigned to\
    \ a name (e.g. --expression\n'D=A-(B&C)'). The table names in the expression can\
    \ be\nwritten as _1, _2 etc if tables are listed before the\noption, and be used\
    \ to populate the list of tables if\nit was left unspecified."
  type: string[]
  inputBinding:
    prefix: --expression
- id: in_mode
  doc: "Compare variants (chr, pos, ref, alt), site (chr,\npos), or genotype (chr,\
    \ pos, ref, alt, GT for a\nspecified sample) of variants. The results are\nvariants\
    \ from all input tables that match specified\ncondition. The default comparison\
    \ TYPE compares\nvariants in input variant tables. For the comparison\nof sites,\
    \ the position of all variants are collected\nand compared, and variants (in all\
    \ tables) with site\nin resulting set of sites are returned. For the\ncomparison\
    \ of genotypes, the genotypes of specified\nsamples for all variants (see option\
    \ --samples) are\ncollected and compared, and variants with genotype in\nresulting\
    \ set of genotypes are returned. The results\nof genotype comparisons are affected\
    \ by runtime option\ntreat_missing_as_wildtype because items with missing\ngenotype\
    \ (chr, pos, ref, alt, NULL) are excluded if\ntreat_missing_as_wildtype is false\
    \ (default), and are\ntreated as (chr, pos, ref, alt, 0) otherwise. The\ndefault\
    \ comparison type is variant, or genotype if\noption --samples is specified."
  type: string?
  inputBinding:
    prefix: --mode
- id: in_samples
  doc: "[SAMPLES [SAMPLES ...]]\nA list of sample names corresponding to the variant\n\
    tables to compare. An error will be raised if a sample\nname matches no or multiple\
    \ samples or if a sample\ndoes not have any genotype."
  type: boolean?
  inputBinding:
    prefix: --samples
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1).\n"
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_tables
  doc: "variant tables to compare. Wildcard characters * and ?\ncan be used to specify\
    \ multiple tables. A table name\nwill be automatically repeated for the comparison\
    \ of\ngenotype of multiple samples if only one table is\nspecified."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vtools
- compare
