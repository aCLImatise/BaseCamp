class: CommandLineTool
id: corset.cwl
inputs:
- id: in_comma_separated_list
  doc: "A comma separated list of distance thresholds. The range must be\nbetween\
    \ 0 and 1. e.g -d 0.4,0.5. If more than one distance threshold\nis supplied, the\
    \ output filenames will be of the form:\ncounts-<threshold>.txt and clusters-<threshold>.txt\n\
    Default: 0.3"
  type: double?
  inputBinding:
    prefix: -d
- id: in_value_used_thresholding
  doc: "The value used for thresholding the log likelihood ratio. The default\nvalue\
    \ will depend on the number of degrees of freedom (which is the\nnumber of groups\
    \ -1). By default D = 17.5 + 2.5 * ndf, which corresponds\napproximately to a\
    \ p-value threshold of 10^-5, when there are fewer than\n10 groups."
  type: long?
  inputBinding:
    prefix: -D
- id: in_switches_log_be
  doc: "Switches off the log likelihood ratio test and should be used\nfor downstream\
    \ differential transcript usage analysis. It will prevent\ndifferentially expressed\
    \ transcript being split into different clusters.\nThis option is the equivalent\
    \ of setting -D to a very large number.\nDefault: log likelihood ratio test on"
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_filter_transcripts_fewer
  doc: "Filter out any transcripts with fewer than this many reads aligning.\nDefault:\
    \ 10"
  type: long?
  inputBinding:
    prefix: -m
- id: in_specifies_grouping_belong
  doc: "Specifies the grouping. i.e. which samples belong to which experimental\n\
    groups. The parameter must be a comma separated list (no spaces), with the\ngroupings\
    \ given in the same order as the bam filename. For example:\n-g Group1,Group1,Group2,Group2\
    \ etc. If this option is not used, each sample\nis treated as an independent experimental\
    \ group."
  type: File?
  inputBinding:
    prefix: -g
- id: in_prefix_output_filenames
  doc: "Prefix for the output filenames. The output files will be of the form\n<prefix>-counts.txt\
    \ and <prefix>-clusters.txt. Default filenames are:\ncounts.txt and clusters.txt"
  type: string?
  inputBinding:
    prefix: -p
- id: in_specifies_files_overwritten
  doc: "Specifies whether the output files should be overwritten if they already exist.\n\
    Default: false"
  type: string?
  inputBinding:
    prefix: -f
- id: in_specifies_sample_names
  doc: "Specifies the sample names to be used in the header of the output count file.\n\
    This should be a comma separated list without spaces.\ne.g. -n Group1-ReplicateA,Group1-ReplicateB,Group2-ReplicateA\
    \ etc.\nDefault: the input filenames will be used."
  type: File?
  inputBinding:
    prefix: -n
- id: in_output_file_summarising
  doc: "Output a file summarising the read alignments. This may be used if you\nwould\
    \ like to read the bam files and run the clustering in seperate runs\nof corset.\
    \ e.g. to read input bam files in parallel. The output will be the\nbam filename\
    \ appended with .corset-reads.\nDefault: false"
  type: File?
  inputBinding:
    prefix: -r
- id: in_input_file_type
  doc: "The input file type. Use -i corset, if you previously ran\ncorset with the\
    \ -r option and would like to restart using those\nread summary files. Use salmon_eq_classes,\
    \ if you aligned with salmon with\nthe flag --dumpEq and are passing corset the\
    \ equivalent class files.\nRunning with either -i corset or salmon_eq_classes\
    \ will switch off the -r option.\nDefault: bam"
  type: File?
  inputBinding:
    prefix: -i
- id: in_running_i_will
  doc: "If running with -i corset or salmon_eq_classes, this will filter out a link\
    \ between contigs\nif the link is supported by less than this many reads (performed\
    \ sample-wise). Reads will\nbe reassigned uniformly to the contigs in the equivalence\
    \ class. This option will\nimprove runtime and memory usage, but will increase\
    \ the number of clusters reported.\nDefault: 1 (no filtering)"
  type: long?
  inputBinding:
    prefix: -l
- id: in_running_i_option
  doc: "If running with -i corset or salmon_eq_classes, this option will filter out\
    \ reads that\nalign to more than x contigs. Default: no filtering"
  type: long?
  inputBinding:
    prefix: -x
- id: in_input_bam_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- corset
