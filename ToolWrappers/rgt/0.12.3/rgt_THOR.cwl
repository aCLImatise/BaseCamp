class: CommandLineTool
id: rgt_THOR.cwl
inputs:
- id: in_name
  doc: Experiment's name and prefix for all files that are
  type: string?
  inputBinding:
    prefix: --name
- id: in_no_merge_bin
  doc: "Merge the overlapping bin before filtering by\np-value.[default: Merging bins]"
  type: boolean?
  inputBinding:
    prefix: --no-merge-bin
- id: in_housekeeping_genes
  doc: "Define housekeeping genes (BED format) used for\nnormalizing. [default: none]"
  type: string?
  inputBinding:
    prefix: --housekeeping-genes
- id: in_output_dir
  doc: 'Store files in output directory. [default: none]'
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_report
  doc: "Generate HTML report about experiment. [default:\nFalse]"
  type: boolean?
  inputBinding:
    prefix: --report
- id: in_dead_zones
  doc: "Define blacklisted genomic regions avoided for\nanalysis (BED format). [default:\
    \ none]"
  type: string?
  inputBinding:
    prefix: --deadzones
- id: in_no_correction
  doc: "Do not use multipe test correction for p-values\n(Benjamini/Hochberg). [default:\
    \ False]"
  type: boolean?
  inputBinding:
    prefix: --no-correction
- id: in_p_value
  doc: "P-value cutoff for peak detection. Call only peaks\nwith p-value lower than\
    \ cutoff. [default: 0.1]"
  type: double?
  inputBinding:
    prefix: --pvalue
- id: in_exts
  doc: "Read's extension size for BAM files (comma separated\nlist for each BAM file\
    \ in config file). If option is\nnot chosen, estimate extension sizes. [default:\
    \ none]"
  type: long?
  inputBinding:
    prefix: --exts
- id: in_factors_inputs
  doc: "Normalization factors for input-DNA (comma separated\nlist for each BAM file\
    \ in config file). If option is\nnot chosen, estimate factors. [default: none]"
  type: File?
  inputBinding:
    prefix: --factors-inputs
- id: in_scaling_factors
  doc: "Scaling factor for each BAM file (not control input-\nDNA) as comma separated\
    \ list for each BAM file in\nconfig file. If option is not chosen, follow\nnormalization\
    \ strategy (TMM or HK approach) [default:\nnone]"
  type: File?
  inputBinding:
    prefix: --scaling-factors
- id: in_save_input
  doc: 'Save input-DNA file if available. [default: False]'
  type: boolean?
  inputBinding:
    prefix: --save-input
- id: in_regions
  doc: "Define regions (BED format) to restrict the analysis,\nthat is, where to train\
    \ the HMM and search for DPs. It\nis faster, but less precise."
  type: string?
  inputBinding:
    prefix: --regions
- id: in_binsize
  doc: "Size of underlying bins for creating the signal.\n[default: 100]"
  type: long?
  inputBinding:
    prefix: --binsize
- id: in_step
  doc: "Stepsize with which the window consecutively slides\nacross the genome to\
    \ create the signal. [default: 50]"
  type: long?
  inputBinding:
    prefix: --step
- id: in_debug
  doc: "Output debug information. Warning: space consuming!\n[default: False]"
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_no_gc_content
  doc: 'Do not normalize towards GC content. [default: False]'
  type: boolean?
  inputBinding:
    prefix: --no-gc-content
- id: in_norm_regions
  doc: "Restrict normalization to particular regions (BED\nformat). [default: none]"
  type: string?
  inputBinding:
    prefix: --norm-regions
- id: in_fold_change
  doc: "Fold change parameter to define training set (t_1, see\npaper). [default:\
    \ 1.6]"
  type: double?
  inputBinding:
    prefix: --foldchange
- id: in_threshold
  doc: "Minimum signal support for differential peaks to\ndefine training set as percentage\
    \ (t_2, see paper).\n[default: 95]"
  type: long?
  inputBinding:
    prefix: --threshold
- id: in_size
  doc: "Number of bins the HMM's training set constists of.\n[default: 10000]"
  type: long?
  inputBinding:
    prefix: --size
- id: in_par
  doc: "Percentile for p-value postprocessing filter.\n[default: 1]"
  type: long?
  inputBinding:
    prefix: --par
- id: in_poisson
  doc: "Use binomial distribution as emmission. [default:\nFalse]"
  type: boolean?
  inputBinding:
    prefix: --poisson
- id: in_single_strand
  doc: "Allow single strand BAM file as input. [default:\nFalse]"
  type: boolean?
  inputBinding:
    prefix: --single-strand
- id: in_m_threshold
  doc: "Define the M threshold of percentile for training TMM.\n[default: 80]"
  type: long?
  inputBinding:
    prefix: --m_threshold
- id: in_a_threshold
  doc: "Define the A threshold of percentile for training TMM.\n[default: 95]"
  type: long?
  inputBinding:
    prefix: --a_threshold
- id: in_rmd_up
  doc: 'Remove the duplicate reads [default: False]'
  type: boolean?
  inputBinding:
    prefix: --rmdup
- id: in_created_dot
  doc: -m, --merge           Merge peaks which have a distance less than the
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'Store files in output directory. [default: none]'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-THOR
