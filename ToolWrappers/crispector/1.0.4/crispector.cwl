class: CommandLineTool
id: crispector.cwl
inputs:
- id: in_tx_in_one
  doc: Tx read 1 input path or Tx merged FASTQ file
  type: File?
  inputBinding:
    prefix: --tx_in1
- id: in_tx_in_two
  doc: "Tx read 2 input path, if FASTQ files aren't\nmerged [OPTIONAL]"
  type: File?
  inputBinding:
    prefix: --tx_in2
- id: in_mock_in_one
  doc: Mock read 1 input path or mock merged FASTQ
  type: File?
  inputBinding:
    prefix: --mock_in1
- id: in_experiment_config
  doc: "A CSV (Comma Separated Values‏) file with\nthe experiment data. Table has\
    \ 11 columns:\nSiteName, AmpliconReference, gRNA, OnTarget,\nForwardPrimer, ReversePrimer,TxInput1Path\n\
    TxInput2Path, MockInput1Path,\nMockInput2Path, DonorReference. The first 4\ncolumns\
    \ are required, the rest are optional.\nHeader should be specified by the above\n\
    order. Please check the README on GitHub\nfurther details and examples.  [required]"
  type: File?
  inputBinding:
    prefix: --experiment_config
- id: in_report_output
  doc: Path to output folder
  type: File?
  inputBinding:
    prefix: --report_output
- id: in_cut_site_position
  doc: "Expected cut-site position with respect to\nthe 3' end of the provided sgRNA\
    \ sequence.\nNote, the sgRNA sequence must be entered\nwithout the PAM.  [default:\
    \ -3]"
  type: long?
  inputBinding:
    prefix: --cut_site_position
- id: in_crisp_ector_config
  doc: "Path to crispector configuration in YAML\nformat.See \"Advanced usage\" section\
    \ in\nREADME on GitHub for further."
  type: File?
  inputBinding:
    prefix: --crispector_config
- id: in_fast_p_options_string
  doc: Try "fastp --help" for more details
  type: string?
  inputBinding:
    prefix: --fastp_options_string
- id: in_min_num_of_reads
  doc: "Minimum number of reads (per locus site) to\nevaluate edit events  [default:\
    \ 500]"
  type: long?
  inputBinding:
    prefix: --min_num_of_reads
- id: in_min_read_length_without_primers
  doc: "Filter out any read shorter than\nmin_read_length_without_primers + length\
    \ of\nforward and reverse primers. This threshold\nfilters primer-dimmer effect\
    \ reads.\n[default: 10]"
  type: long?
  inputBinding:
    prefix: --min_read_length_without_primers
- id: in_max_edit_distance_on_primers
  doc: "Maximum edit distance to consider a read\nprefix (or suffix) as a match for\
    \ a primer.\n[default: 8]"
  type: long?
  inputBinding:
    prefix: --max_edit_distance_on_primers
- id: in_amplicon_min_score
  doc: "RANGE\nMinimum normalized alignment score to\nconsider a read alignment as\
    \ valid.\nNormalized alignment score is defined as the\nNeedleman-Wunch alignment\
    \ score divided by\nthe maximum possible score. Below this\nalignment threshold,\
    \ reads are discarded.\n[default: 30]"
  type: double?
  inputBinding:
    prefix: --amplicon_min_score
- id: in_translocation_amplicon_min_score
  doc: "RANGE\nMinimum alignment score to consider a read\nwith primer inconsistency\
    \ as a possible\ntranslocation. Should be higher than\n--amplicon_min_score, because\
    \ translocations\nreads are noisier.Score is normalized\nbetween 0 (not even one\
    \ bp match) to 100\n(read is identical to  [default: 80]"
  type: double?
  inputBinding:
    prefix: --translocation_amplicon_min_score
- id: in_min_editing_activity
  doc: "RANGE\nMinimum editing activity (%). Sites with\nediting activity lower than\
    \ the minimum,\nwill be discarded from the translocation\ndetection.  [default:\
    \ 0.1]"
  type: double?
  inputBinding:
    prefix: --min_editing_activity
- id: in_translocation_p_value
  doc: "RANGE\nTranslocations statistical significance\nlevel. This threshold is applied\
    \ on the\ncorrected p_value,FDR (false discovery\nrate).  [default: 0.05]"
  type: double?
  inputBinding:
    prefix: --translocation_p_value
- id: in_disable_translocations
  doc: "Disable translocations detection  [default:\nFalse]"
  type: boolean?
  inputBinding:
    prefix: --disable_translocations
- id: in_override_noise_estimation
  doc: "Override noise estimation with default q\nparameter from crispector_config\
    \ file. It's\nadvisable to set this flag for experiment\nwith a low number of\
    \ off-target sites (<5).\nq is defined as the probability of an indel\nto occur\
    \ through an edit event. Check\nCRISPECTOR paper for more details.\n[default:\
    \ False]"
  type: boolean?
  inputBinding:
    prefix: --override_noise_estimation
- id: in_confidence_interval
  doc: "RANGE\nConfidence interval for the evaluated\nediting activity  [default:\
    \ 0.95]"
  type: double?
  inputBinding:
    prefix: --confidence_interval
- id: in_enable_substitutions
  doc: "Enable substitutions events for the\nquantification of edit events  [default:\n\
    False]"
  type: boolean?
  inputBinding:
    prefix: --enable_substitutions
- id: in_suppress_site_output
  doc: "Do not create plots for sites (save memory\nand runtime)  [default: False]"
  type: boolean?
  inputBinding:
    prefix: --suppress_site_output
- id: in_keep_intermediate_files
  doc: "Keep intermediate files for debug purposes\n[default: False; required]"
  type: boolean?
  inputBinding:
    prefix: --keep_intermediate_files
- id: in_verbose
  doc: 'Higher verbosity  [default: False]'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_file
  doc: -m_r2, --mock_in2 PATH          Mock read read 2 input path, if FASTQ files
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_report_output
  doc: Path to output folder
  type: File?
  outputBinding:
    glob: $(inputs.in_report_output)
hints: []
cwlVersion: v1.1
baseCommand:
- crispector
