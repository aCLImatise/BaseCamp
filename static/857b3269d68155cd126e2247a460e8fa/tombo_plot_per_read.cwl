class: CommandLineTool
id: tombo_plot_per_read.cwl
inputs:
- id: in_genome_locations
  doc: "Genomic locations at which to plot signal. Format\nlocations as \"chrm:position[:strand]\n\
    [chrm2:position2[:strand2] ...]\" (strand not\napplicable for all applications)"
  type: string[]
  inputBinding:
    prefix: --genome-locations
- id: in_per_read_statistics_filename
  doc: "Binary file containing per-read statistics from\nstatistical testing."
  type: File?
  inputBinding:
    prefix: --per-read-statistics-filename
- id: in_genome_fast_a
  doc: "FASTA file used to re-squiggle. For faster sequence\naccess."
  type: File?
  inputBinding:
    prefix: --genome-fasta
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_num_reads
  doc: 'Number of reads to plot. Default: 100'
  type: long?
  inputBinding:
    prefix: --num-reads
- id: in_num_bases
  doc: 'Number of bases to plot/output. Default: 51'
  type: long?
  inputBinding:
    prefix: --num-bases
- id: in_box_center
  doc: Plot a box around the central base.
  type: boolean?
  inputBinding:
    prefix: --box-center
- id: in_pdf_filename
  doc: "PDF filename to store plot(s). Default:\ntombo_results.per_read_stats.pdf"
  type: File?
  inputBinding:
    prefix: --pdf-filename
- id: in_corrected_group
  doc: "FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000"
  type: long?
  inputBinding:
    prefix: --corrected-group
- id: in_base_call_subgroups
  doc: "FAST5 subgroup(s) (under /Analyses/[--basecall-\ngroup]/) containing basecalls\
    \ and created within\n[--corrected-group] containing re-squiggle results.\nDefault:\
    \ ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: in_quiet
  doc: Don't print status information.
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tombo
- plot
- per_read
