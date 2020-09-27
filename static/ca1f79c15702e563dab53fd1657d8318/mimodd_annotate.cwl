class: CommandLineTool
id: mimodd_annotate.cwl
inputs:
- id: in_ofile
  doc: "redirect the output to the specified file (default:\nstdout)"
  type: File
  inputBinding:
    prefix: --ofile
- id: in_codon_tables
  doc: "specify custom codon tables to be used in assessing\nvariant effects at the\
    \ protein level; if a codon table\nshould be used for only a specific chromosome,\
    \ use the\nformat CHROM:TABLE_NAME. Use TABLE_NAME alone to\nspecify a codon table\
    \ to be used for all chromosomes,\nfor which no chromosome-specific table is provided.\n\
    Valid TABLE_NAMEs are those defined in the Codon\ntables section of the SnpEff\
    \ config file. NOTE: It is\nalso possible to associate chromosomes with a codon\n\
    table permanently by editing the SnpEff config file."
  type: string[]
  inputBinding:
    prefix: --codon-tables
- id: in_stats
  doc: generate a results summary file of the specified name
  type: File
  inputBinding:
    prefix: --stats
- id: in_no_downstream
  doc: do not include downstream effects in the output
  type: boolean
  inputBinding:
    prefix: --no-downstream
- id: in_no_upstream
  doc: do not include upstream effects in the output
  type: boolean
  inputBinding:
    prefix: --no-upstream
- id: in_no_intron
  doc: do not include intron effects in the output
  type: boolean
  inputBinding:
    prefix: --no-intron
- id: in_no_intergenic
  doc: do not include intergenic effects in the output
  type: boolean
  inputBinding:
    prefix: --no-intergenic
- id: in_no_utr
  doc: do not include UTR effects in the output
  type: boolean
  inputBinding:
    prefix: --no-utr
- id: in_ud
  doc: "specify the upstream/downstream interval length, i.e.,\nvariants more than\
    \ DISTANCE nts from the next\nannotated gene are considered to be intergenic"
  type: long
  inputBinding:
    prefix: --ud
- id: in_config
  doc: "location of the SnpEff installation directory. Will\noverride MiModD SNPEFF_PATH\
    \ config setting if\nprovided."
  type: File
  inputBinding:
    prefix: --config
- id: in_memory
  doc: maximal memory to use in GB (overrides config setting)
  type: string
  inputBinding:
    prefix: --memory
- id: in_quiet
  doc: suppress original messages from SnpEff
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: verbose output (independent of SnpEff)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_file
  doc: a vcf input file
  type: string
  inputBinding:
    position: 0
- id: in_annotation_source
  doc: "the name of an installed SnpEff genome annotation file\n(the snpeff-genomes\
    \ tool can be used to get a list of\nall such names)"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ofile
  doc: "redirect the output to the specified file (default:\nstdout)"
  type: File
  outputBinding:
    glob: $(inputs.in_ofile)
cwlVersion: v1.1
baseCommand:
- mimodd
- annotate
