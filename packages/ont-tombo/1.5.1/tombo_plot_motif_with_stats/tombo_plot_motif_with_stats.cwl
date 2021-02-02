class: CommandLineTool
id: tombo_plot_motif_with_stats.cwl
inputs:
- id: in_statistics_filename
  doc: "--genome-fasta GENOME_FASTA\n[--control-fast5-basedirs CONTROL_FAST5_BASEDIRS\
    \ [CONTROL_FAST5_BASEDIRS ...]]\n[--plot-standard-model]\n[--plot-alternate-model\
    \ {dam,CpG,6mA,5mC,dcm}]\n[--overplot-threshold OVERPLOT_THRESHOLD]\n[--num-regions\
    \ NUM_REGIONS]\n[--num-context NUM_CONTEXT]\n[--num-statistics NUM_STATISTICS]\n\
    [--coverage-dampen-counts COVERAGE_DAMPEN_COUNTS COVERAGE_DAMPEN_COUNTS]\n[--pdf-filename\
    \ PDF_FILENAME]\n[--corrected-group CORRECTED_GROUP]\n[--basecall-subgroups BASECALL_SUBGROUPS\
    \ [BASECALL_SUBGROUPS ...]]\n[--quiet] [--help]"
  type: File
  inputBinding:
    prefix: --statistics-filename
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_motif
  doc: "Motif of interest at which to plot signal and\nstatsitics. Supports IUPAC\
    \ single letter codes (use T\nfor RNA)."
  type: string
  inputBinding:
    prefix: --motif
- id: in_genome_fast_a
  doc: "FASTA file used to re-squiggle. For faster sequence\naccess."
  type: File
  inputBinding:
    prefix: --genome-fasta
- id: in_control_fast_five_based_irs
  doc: "Set of directories containing fast5 files for control\nreads, containing only\
    \ canonical nucleotides."
  type: long[]
  inputBinding:
    prefix: --control-fast5-basedirs
- id: in_plot_standard_model
  doc: Add default standard model distribution to the plot.
  type: boolean
  inputBinding:
    prefix: --plot-standard-model
- id: in_plot_alternate_model
  doc: Add alternative model distribution to the plot.
  type: string
  inputBinding:
    prefix: --plot-alternate-model
- id: in_over_plot_threshold
  doc: "Coverage level to trigger alternative plot type\ninstead of raw signal. Default:\
    \ 50"
  type: long
  inputBinding:
    prefix: --overplot-threshold
- id: in_num_regions
  doc: 'Number of regions to plot. Default: 3'
  type: long
  inputBinding:
    prefix: --num-regions
- id: in_num_context
  doc: 'Number of context bases around motif. Default: 5'
  type: long
  inputBinding:
    prefix: --num-context
- id: in_num_statistics
  doc: "Number of motif centered regions to include in\nstatistic distributions. Default:\
    \ 200"
  type: long
  inputBinding:
    prefix: --num-statistics
- id: in_coverage_dampen_counts
  doc: "COVERAGE_DAMPEN_COUNTS\nDampen fraction modified estimates for low coverage\n\
    sites. Two parameters are unmodified and modified\npseudo read counts. This is\
    \ equivalent to a beta prior\non the fraction estimate. Set to \"0 0\" to disable\n\
    dampened fraction estimation. Default: [2, 0]"
  type: long
  inputBinding:
    prefix: --coverage-dampen-counts
- id: in_pdf_filename
  doc: "PDF filename to store plot(s). Default:\ntombo_results.motif_statistics.pdf"
  type: File
  inputBinding:
    prefix: --pdf-filename
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
- motif_with_stats
