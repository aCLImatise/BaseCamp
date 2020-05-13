class: CommandLineTool
id: mimodd_annotate.cwl
inputs:
- id: input_file
  doc: a vcf input file
  type: string
  inputBinding:
    position: 0
- id: annotation_source
  doc: the name of an installed SnpEff genome annotation file (the snpeff-genomes
    tool can be used to get a list of all such names)
  type: string
  inputBinding:
    position: 1
- id: ofile
  doc: 'redirect the output to the specified file (default: stdout)'
  type: string
  inputBinding:
    prefix: --ofile
- id: codon_tables
  doc: 'specify custom codon tables to be used in assessing variant effects at the
    protein level; if a codon table should be used for only a specific chromosome,
    use the format CHROM:TABLE_NAME. Use TABLE_NAME alone to specify a codon table
    to be used for all chromosomes, for which no chromosome-specific table is provided.
    Valid TABLE_NAMEs are those defined in the Codon tables section of the SnpEff
    config file. NOTE: It is also possible to associate chromosomes with a codon table
    permanently by editing the SnpEff config file.'
  type: string[]
  inputBinding:
    prefix: --codon-tables
- id: stats
  doc: generate a results summary file of the specified name
  type: string
  inputBinding:
    prefix: --stats
- id: no_downstream
  doc: do not include downstream effects in the output
  type: boolean
  inputBinding:
    prefix: --no-downstream
- id: no_upstream
  doc: do not include upstream effects in the output
  type: boolean
  inputBinding:
    prefix: --no-upstream
- id: no_intron
  doc: do not include intron effects in the output
  type: boolean
  inputBinding:
    prefix: --no-intron
- id: no_intergenic
  doc: do not include intergenic effects in the output
  type: boolean
  inputBinding:
    prefix: --no-intergenic
- id: no_utr
  doc: do not include UTR effects in the output
  type: boolean
  inputBinding:
    prefix: --no-utr
- id: ud
  doc: specify the upstream/downstream interval length, i.e., variants more than DISTANCE
    nts from the next annotated gene are considered to be intergenic
  type: string
  inputBinding:
    prefix: --ud
- id: config
  doc: location of the SnpEff installation directory. Will override MiModD SNPEFF_PATH
    config setting if provided.
  type: File
  inputBinding:
    prefix: --config
- id: memory
  doc: maximal memory to use in GB (overrides config setting)
  type: string
  inputBinding:
    prefix: --memory
- id: quiet
  doc: suppress original messages from SnpEff
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: verbose output (independent of SnpEff)
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- mimodd
- annotate
