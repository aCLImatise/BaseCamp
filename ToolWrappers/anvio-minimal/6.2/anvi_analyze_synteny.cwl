class: CommandLineTool
id: anvi_analyze_synteny.cwl
inputs:
- id: in_n_gram_window_range
  doc: FILE_PATH [--analyze-unknown-functions]
  type: string
  inputBinding:
    prefix: --ngram-window-range
- id: in_external_genomes
  doc: "A two-column TAB-delimited flat text file that lists\nanvi'o contigs databases.\
    \ The first item in the header\nline should read 'name', and the second should\
    \ read\n'contigs_db_path'. Each line in the file should\ndescribe a single entry,\
    \ where the first column is the\nname of the genome (or MAG), and the second column\
    \ is\nthe anvi'o contigs database generated for this genome."
  type: File
  inputBinding:
    prefix: --external-genomes
- id: in_annotation_source
  doc: "NAME\nGet functional annotations for a specific annotation\nsource. You can\
    \ use the flag '--list-annotation-\nsources' to learn about what sources are available."
  type: string
  inputBinding:
    prefix: --annotation-source
- id: in_output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
- id: in_analyze_unknown_functions
  doc: "Provide this flag if you want anvi-analyze-synteny to\ntake into account Ngrams\
    \ that contain gene calls that\nhave no annotation.\n"
  type: boolean
  inputBinding:
    prefix: --analyze-unknown-functions
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: File path to store results.
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- anvi-analyze-synteny
