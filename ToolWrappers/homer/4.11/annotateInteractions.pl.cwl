class: CommandLineTool
id: annotateInteractions.pl.cwl
inputs:
- id: in_res
  doc: '<#> (Resolution of analysis, default: auto detect)'
  type: boolean
  inputBinding:
    prefix: -res
- id: in_hub_count
  doc: '<#> (Minimum number of interactions to define a hub, default: 5)'
  type: boolean
  inputBinding:
    prefix: -hubCount
- id: in_skip_ann
  doc: (skip all endpoint annotations)
  type: boolean
  inputBinding:
    prefix: -skipann
- id: in_no_ann
  doc: (skip detailed annotation of endpoints)
  type: boolean
  inputBinding:
    prefix: -noann
- id: in_washu
  doc: '(create Wash U Epigenome Browser output files: outDirName.bed.gz and tbi)'
  type: boolean
  inputBinding:
    prefix: -washu
- id: in_cpu
  doc: '# (number of cores to use)'
  type: boolean
  inputBinding:
    prefix: -cpu
- id: in_mind_ist
  doc: '<#> (filter out interactions spaced less than # bp - set high for only interchr)'
  type: boolean
  inputBinding:
    prefix: -minDist
- id: in_max_dist
  doc: '<#> (filter out interactions spaced more than # bp, will remove interchr)'
  type: boolean
  inputBinding:
    prefix: -maxDist
- id: in_p_value
  doc: '<#> (filter out interactions with p-value greater than #)'
  type: boolean
  inputBinding:
    prefix: -pvalue
- id: in_dp_value
  doc: '<#> (filter out interactions with p-value (vs bg) greater than #)'
  type: boolean
  inputBinding:
    prefix: -dpvalue
- id: in_zscore
  doc: '<#> (filter out interactions with zscore less than #)'
  type: boolean
  inputBinding:
    prefix: -zscore
- id: in_dz_score
  doc: '<#> (filter out interactions with zscore (vs bg) less than #)'
  type: boolean
  inputBinding:
    prefix: -dzscore
- id: in_filter
  doc: (only look at interactions with endpoints in peakfile)
  type: File
  inputBinding:
    prefix: -filter
- id: in_filter_two
  doc: (only look at interactions connecting -filter and -filter2 peak files)
  type: long
  inputBinding:
    prefix: -filter2
- id: in_ctcf
  doc: <CTCF motif> (calculated directionality stats)
  type: File
  inputBinding:
    prefix: -ctcf
- id: in_check_overlap_peak
  doc: '[peak file 2] ... (Check overlap with peak files)'
  type: long
  inputBinding:
    prefix: -p
- id: in_d
  doc: '[2nd Hi-C TagDirectory] ...'
  type: Directory
  inputBinding:
    prefix: -d
- id: in_circo_s
  doc: (Convert interactions to circos interactions format - stdout)
  type: boolean
  inputBinding:
    prefix: -circos
- id: in_compare_st_file
  doc: '[interaction file3] ... (Compare 1st file interactions to these)'
  type: File
  inputBinding:
    prefix: -i
- id: in_connect
  doc: <peakFile2> (returns association table between sets of peaks)
  type: long
  inputBinding:
    prefix: -connect
- id: in_pout
  doc: (Convert interactions to a non-redundant peak file, sent to stdout)
  type: boolean
  inputBinding:
    prefix: -pout
- id: in_g_size
  doc: '<#> (size of genome, default: 2e9)'
  type: boolean
  inputBinding:
    prefix: -gsize
- id: in_pos
  doc: :XXX-YYY (specific, continuous region)
  type: string
  inputBinding:
    prefix: -pos
- id: in_bgp
  doc: (peak file)
  type: File
  inputBinding:
    prefix: -bgp
- id: in_interaction_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_genome_version
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: ''
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- annotateInteractions.pl
