class: CommandLineTool
id: anvi_analyze_synteny.cwl
inputs:
- id: in_genomes_storage
  doc: "Anvi'o genomes storage file (default: None)"
  type: File?
  inputBinding:
    prefix: --genomes-storage
- id: in_n_gram_window_range
  doc: "The range of window sizes of Ngrams to analyze for\nsynteny patterns.Please\
    \ format the window-range as x:y\n(e.g. Window sizes 2 to 4 would be denoted as:\
    \ 2:4)\n(default: 2:3)"
  type: long?
  inputBinding:
    prefix: --ngram-window-range
- id: in_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_annotation_source
  doc: "NAME\nGet functional annotations for a specific annotation\nsource. You can\
    \ use the flag '--list-annotation-\nsources' to learn about what sources are available.\n\
    (default: None)"
  type: string?
  inputBinding:
    prefix: --annotation-source
- id: in_pan_db
  doc: "Anvi'o pan database (default: None)"
  type: string?
  inputBinding:
    prefix: --pan-db
- id: in_n_gram_source
  doc: "If two annotation sources are provided, please choose\none annotation source\
    \ that will be used to calcuate\nNgrams (e.g. gene_clusters, COG_FUNCTION) (default:\n\
    None)"
  type: string?
  inputBinding:
    prefix: --ngram-source
- id: in_list_annotation_sources
  doc: "List available functional annotation sources.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --list-annotation-sources
- id: in_analyze_unknown_functions
  doc: "Provide this flag if you want anvi-analyze-synteny to\nreport Ngrams that\
    \ contain gene calls that have no\nannotation. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --analyze-unknown-functions
- id: in_genome_names
  doc: "Genome names to 'focus'. You can use this parameter to\nlimit the genomes\
    \ included in your analysis. You can\nprovide these names as a comma-separated\
    \ list of\nnames, or you can put them in a file, where you have a\nsingle genome\
    \ name in each line, and provide the file\npath. (default: None)"
  type: File?
  inputBinding:
    prefix: --genome-names
- id: in_first_functional_hit_only
  doc: "Use this flag if you want to use on the first\nfunctional annotation when\
    \ making ngrams and assigning\nannotations. In some cases, anvio reports more\
    \ than\none annotation when there are multiple good hits to\nthe gene. When this\
    \ happens, all annotations will be\nreported in order of alignment score and delimited\
    \ by\n'!!!' e.g. 'COG123!!!COG456!!!COG789'. This flag will\nreport 'COG123!!!COG456!!!COG789'\
    \ as 'COG123'.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --first-functional-hit-only
- id: in_n_grams
  doc: '🍺 More on `anvi-analyze-synteny`:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-analyze-synteny
