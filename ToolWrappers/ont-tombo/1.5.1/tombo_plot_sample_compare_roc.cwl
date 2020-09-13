class: CommandLineTool
id: ../../../tombo_plot_sample_compare_roc.cwl
inputs:
- id: in_var_0
  doc: ''
  type: boolean
  inputBinding:
    prefix: --control-statistics-filenames
- id: in_motif_descriptions
  doc: ''
  type: string[]
  inputBinding:
    prefix: --motif-descriptions
- id: in_files_load_base
  doc: Files to load genomic base anchored statistics.
  type: string[]
  inputBinding:
    prefix: --statistics-filenames
- id: in_pdf_filename
  doc: "PDF filename to store plot(s). Default:\ntombo_results.sample_compare.roc.pdf"
  type: File
  inputBinding:
    prefix: --pdf-filename
- id: in_statistics_per_block
  doc: "Number of randomly selected per-read, per-base\nstatistics to extract from\
    \ each genomic block for\nplotting. Default: Include all stats"
  type: long
  inputBinding:
    prefix: --statistics-per-block
- id: in_total_statistics_limit
  doc: "Total per-read statistics to be extracted for\nplotting. Avoids memory overflow\
    \ for large runs.\nDefault: 5000000"
  type: long
  inputBinding:
    prefix: --total-statistics-limit
- id: in_quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_var_7
  doc: '[STATISTICS_FILENAMES ...]'
  type: string
  inputBinding:
    position: 0
- id: in_var_8
  doc: '[CONTROL_STATISTICS_FILENAMES ...]'
  type: string
  inputBinding:
    position: 1
- id: in_genome_fast_a
  doc: '[--pdf-filename PDF_FILENAME]'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tombo
- plot
- sample_compare_roc
