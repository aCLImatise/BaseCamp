class: CommandLineTool
id: tombo_plot_sample_compare_roc.cwl
inputs:
- id: in_statistics_filenames
  doc: Files to load genomic base anchored statistics.
  type: string[]
  inputBinding:
    prefix: --statistics-filenames
- id: in_from_acontrol_sample
  doc: "Files to load genomic base anchored statistics from a\ncontrol sample."
  type: string[]
  inputBinding:
    prefix: --control-statistics-filenames
- id: in_motif_descriptions
  doc: "Ground truth, motif centered, modified base\ndescriptions for computing ROC\
    \ and PR curves. Each\nstatistics file is associated with a set of motif\ndescriptions.\
    \ Format descriptions as:\n\"motif:mod_pos:name[::motif2:mod_pos2:name2...]\"\
    .\nmod_pos indicates the alternate-base within the motif\n(1-based index). Example:\
    \ CCWGG:2:\"dcm\n5mC\"::GATC:2:\"dam 6mA\" would assess the performance of\na\
    \ single Tombo statistics file for identification of\nE. coli dam and dcm methylation."
  type: string[]
  inputBinding:
    prefix: --motif-descriptions
- id: in_fasta_file_used
  doc: "FASTA file used to re-squiggle. For faster sequence\naccess."
  type: File?
  inputBinding:
    prefix: --genome-fasta
- id: in_pdf_filename
  doc: "PDF filename to store plot(s). Default:\ntombo_results.sample_compare.roc.pdf"
  type: File?
  inputBinding:
    prefix: --pdf-filename
- id: in_statistics_per_block
  doc: "Number of randomly selected per-read, per-base\nstatistics to extract from\
    \ each genomic block for\nplotting. Default: Include all stats"
  type: long?
  inputBinding:
    prefix: --statistics-per-block
- id: in_total_statistics_limit
  doc: "Total per-read statistics to be extracted for\nplotting. Avoids memory overflow\
    \ for large runs.\nDefault: 5000000"
  type: long?
  inputBinding:
    prefix: --total-statistics-limit
- id: in_quiet
  doc: Don't print status information.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_var_8
  doc: '[CONTROL_STATISTICS_FILENAMES ...]'
  type: string
  inputBinding:
    position: 0
- id: in_var_9
  doc: '[--pdf-filename PDF_FILENAME]'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tombo
- plot
- sample_compare_roc
