class: CommandLineTool
id: tombo_plot_cluster_most_significant.cwl
inputs:
- id: in_control_fast_five_based_irs
  doc: "CONTROL_FAST5_BASEDIRS\n[CONTROL_FAST5_BASEDIRS ...]\n--statistics-filename\n\
    STATISTICS_FILENAME\n[--genome-fasta GENOME_FASTA]\n[--processes PROCESSES]\n\
    [--num-regions NUM_REGIONS]\n[--num-bases NUM_BASES]\n[--slide-span SLIDE_SPAN]\n\
    [--pdf-filename PDF_FILENAME]\n[--r-data-filename R_DATA_FILENAME]\n[--corrected-group\
    \ CORRECTED_GROUP]\n[--basecall-subgroups BASECALL_SUBGROUPS [BASECALL_SUBGROUPS\
    \ ...]]\n[--quiet] [--help]"
  type: boolean
  inputBinding:
    prefix: --control-fast5-basedirs
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_statistics_filename
  doc: File to save/load genomic base anchored statistics.
  type: File
  inputBinding:
    prefix: --statistics-filename
- id: in_genome_fast_a
  doc: "FASTA file used to re-squiggle. For faster sequence\naccess."
  type: File
  inputBinding:
    prefix: --genome-fasta
- id: in_processes
  doc: 'Number of processes. Default: 1'
  type: long
  inputBinding:
    prefix: --processes
- id: in_num_regions
  doc: 'Number of regions to plot. Default: 10'
  type: long
  inputBinding:
    prefix: --num-regions
- id: in_num_bases
  doc: 'Number of bases to plot/output. Default: 21'
  type: long
  inputBinding:
    prefix: --num-bases
- id: in_slide_span
  doc: "Number of bases offset over which to search when\ncomputing distances for\
    \ signal cluster plotting.\nDefault: 0 (exact position)"
  type: long
  inputBinding:
    prefix: --slide-span
- id: in_pdf_filename
  doc: "PDF filename to store plot(s). Default:\ntombo_results.signal_clusters.pdf"
  type: File
  inputBinding:
    prefix: --pdf-filename
- id: in_r_data_filename
  doc: "Filename to save R data structure. Default: Don't save"
  type: File
  inputBinding:
    prefix: --r-data-filename
- id: in_corrected_group
  doc: "FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000"
  type: long
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
  type: boolean
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tombo
- plot
- cluster_most_significant
