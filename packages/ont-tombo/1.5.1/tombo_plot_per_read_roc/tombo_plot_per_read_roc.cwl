class: CommandLineTool
id: tombo_plot_per_read_roc.cwl
inputs:
- id: in_binary_files_containing
  doc: "Binary files containing per-read statistics from\nstatistical testing."
  type: string[]
  inputBinding:
    prefix: --per-read-statistics-filenames
- id: in_modified_locations
  doc: "Modification description and bed format files\ncontaining single base locations\
    \ of ground truth\nmodified sites. Bed files should contain 6 fields\nincluding\
    \ strand. Format descriptions as\n\"mod_name:locs.bed\". Example: \"CpG\nbisulfite\"\
    :bisulfite_locs.bed"
  type: string[]
  inputBinding:
    prefix: --modified-locations
- id: in_unmodified_locations
  doc: "Bed format files containing single base locations of\nground truth unmodified\
    \ sites. Bed files should\ncontain 6 fields including strand."
  type: string[]
  inputBinding:
    prefix: --unmodified-locations
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
- id: in_genome_fast_a
  doc: "FASTA file used to re-squiggle. For faster sequence\naccess."
  type: File
  inputBinding:
    prefix: --genome-fasta
- id: in_statistics_per_block
  doc: "Number of randomly selected per-read, per-base\nstatistics to extract from\
    \ each genomic block for\nplotting. Default: 100000"
  type: long
  inputBinding:
    prefix: --statistics-per-block
- id: in_total_statistics_limit
  doc: "Total per-read statistics to be extracted for\nplotting. Avoids memory overflow\
    \ for large runs.\nDefault: 5000000"
  type: long
  inputBinding:
    prefix: --total-statistics-limit
- id: in_pdf_filename
  doc: "PDF filename to store plot(s). Default:\ntombo_results.per_reads_roc.pdf"
  type: File
  inputBinding:
    prefix: --pdf-filename
- id: in_quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_var_9
  doc: '[PER_READ_STATISTICS_FILENAMES ...]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tombo
- plot
- per_read_roc
