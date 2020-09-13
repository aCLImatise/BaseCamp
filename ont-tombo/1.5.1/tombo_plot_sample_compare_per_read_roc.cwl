class: CommandLineTool
id: ../../../tombo_plot_sample_compare_per_read_roc.cwl
inputs:
- id: in_var_0
  doc: ''
  type: boolean
  inputBinding:
    prefix: --per-read-control-statistics-filenames
- id: in_var_1
  doc: ''
  type: boolean
  inputBinding:
    prefix: --motif-descriptions
- id: in_genome_fast_a
  doc: ''
  type: string
  inputBinding:
    prefix: --genome-fasta
- id: in_binary_files_containing
  doc: "Binary files containing per-read statistics from\nstatistical testing."
  type: string[]
  inputBinding:
    prefix: --per-read-statistics-filenames
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
- id: in_var_8
  doc: '[PER_READ_STATISTICS_FILENAMES ...]'
  type: string
  inputBinding:
    position: 0
- id: in_var_9
  doc: '[PER_READ_CONTROL_STATISTICS_FILENAMES ...]'
  type: string
  inputBinding:
    position: 1
- id: in_var_10
  doc: '[MOTIF_DESCRIPTIONS ...]'
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
- sample_compare_per_read_roc
