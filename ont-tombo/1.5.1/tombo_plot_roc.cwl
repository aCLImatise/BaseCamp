class: CommandLineTool
id: ../../../tombo_plot_roc.cwl
inputs:
- id: statistics_filenames
  doc: Files to load genomic base anchored statistics.
  type: string[]
  inputBinding:
    prefix: --statistics-filenames
- id: modified_locations
  doc: 'Modification description and bed format files containing single base locations
    of ground truth modified sites. Bed files should contain 6 fields including strand.
    Format descriptions as "mod_name:locs.bed". Example: "CpG bisulfite":bisulfite_locs.bed'
  type: string[]
  inputBinding:
    prefix: --modified-locations
- id: unmodified_locations
  doc: Bed format files containing single base locations of ground truth unmodified
    sites. Bed files should contain 6 fields including strand.
  type: string[]
  inputBinding:
    prefix: --unmodified-locations
- id: motif_descriptions
  doc: 'Ground truth, motif centered, modified base descriptions for computing ROC
    and PR curves. Each statistics file is associated with a set of motif descriptions.
    Format descriptions as: "motif:mod_pos:name[::motif2:mod_pos2:name2...]". mod_pos
    indicates the alternate-base within the motif (1-based index). Example: CCWGG:2:"dcm
    5mC"::GATC:2:"dam 6mA" would assess the performance of a single Tombo statistics
    file for identification of E. coli dam and dcm methylation.'
  type: string[]
  inputBinding:
    prefix: --motif-descriptions
- id: genome_fast_a
  doc: FASTA file used to re-squiggle. For faster sequence access.
  type: string
  inputBinding:
    prefix: --genome-fasta
- id: pdf_filename
  doc: 'PDF filename to store plot(s). Default: tombo_results.roc.pdf'
  type: string
  inputBinding:
    prefix: --pdf-filename
- id: statistics_per_block
  doc: 'Number of randomly selected per-read, per-base statistics to extract from
    each genomic block for plotting. Default: Include all stats'
  type: string
  inputBinding:
    prefix: --statistics-per-block
- id: total_statistics_limit
  doc: 'Total per-read statistics to be extracted for plotting. Avoids memory overflow
    for large runs. Default: 5000000'
  type: string
  inputBinding:
    prefix: --total-statistics-limit
- id: quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- tombo
- plot
- roc
