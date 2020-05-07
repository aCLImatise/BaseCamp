class: CommandLineTool
id: vtools_compare.cwl
inputs:
- id: tables
  doc: variant tables to compare. Wildcard characters * and ? can be used to specify
    multiple tables. A table name will be automatically repeated for the comparison
    of genotype of multiple samples if only one table is specified.
  type: string
  inputBinding:
    position: 0
- id: union
  doc: '[TABLE [DESC ...]] Print the number (default) or save variants with TYPE in
    the TYPE of any of the tables (T1 | T2 | T3 ...) to TABLE if a name is specified.
    An optional message can be added to describe the table.'
  type: boolean
  inputBinding:
    prefix: --union
- id: intersection
  doc: '[TABLE [DESC ...]] Print the number (default) or save variants with TYPE in
    the TYPE of all the tables (T1 & T2 & T3 ...) to TABLE if a name is specified.
    An optional message can be added to describe the table.'
  type: boolean
  inputBinding:
    prefix: --intersection
- id: difference
  doc: '[TABLE [DESC ...]] Print the number (default) or save variants with TYPE in
    the TYPE of the first, but not in the TYPE of others (T1 - T2 - T3...) to TABLE
    if a name is specified. An optional message can be added to describe the table.'
  type: boolean
  inputBinding:
    prefix: --difference
- id: expression
  doc: "[DESC ...] Evaluate a set expression with table names representing variants\
    \ in these tables. Operators | (or), & (and), - (difference) and ^ (A or B but\
    \ not both) are allowed. The results will be saved to table if the result is assigned\
    \ to a name (e.g. --expression 'D=A-(B&C)'). The table names in the expression\
    \ can be written as _1, _2 etc if tables are listed before the option, and be\
    \ used to populate the list of tables if it was left unspecified."
  type: string
  inputBinding:
    prefix: --expression
- id: mode
  doc: Compare variants (chr, pos, ref, alt), site (chr, pos), or genotype (chr, pos,
    ref, alt, GT for a specified sample) of variants. The results are variants from
    all input tables that match specified condition. The default comparison TYPE compares
    variants in input variant tables. For the comparison of sites, the position of
    all variants are collected and compared, and variants (in all tables) with site
    in resulting set of sites are returned. For the comparison of genotypes, the genotypes
    of specified samples for all variants (see option --samples) are collected and
    compared, and variants with genotype in resulting set of genotypes are returned.
    The results of genotype comparisons are affected by runtime option treat_missing_as_wildtype
    because items with missing genotype (chr, pos, ref, alt, NULL) are excluded if
    treat_missing_as_wildtype is false (default), and are treated as (chr, pos, ref,
    alt, 0) otherwise. The default comparison type is variant, or genotype if option
    --samples is specified.
  type: string
  inputBinding:
    prefix: --mode
- id: samples
  doc: '[SAMPLES [SAMPLES ...]] A list of sample names corresponding to the variant
    tables to compare. An error will be raised if a sample name matches no or multiple
    samples or if a sample does not have any genotype.'
  type: boolean
  inputBinding:
    prefix: --samples
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools
- compare
