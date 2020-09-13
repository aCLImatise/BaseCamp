class: CommandLineTool
id: ../../../dfamscan.pl.cwl
inputs:
- id: in_df_am_in_file
  doc: "Use this is you've already run nhmmscan, and\njust want to perfom dfamscan\
    \ filtering/sorting.\nThe file must be the one produced by nhmmscan's\n--dfamtblout\
    \ flag.\n(Note: must be nhmmscan output, not nhmmer output)"
  type: File
  inputBinding:
    prefix: --dfam_infile
- id: in_fast_a_file
  doc: Use these if you want dfamscan to control a
  type: string
  inputBinding:
    prefix: --fastafile
- id: in_hmm_file
  doc: run of nhmmscan, then do filtering/sorting
  type: string
  inputBinding:
    prefix: --hmmfile
- id: in_e
  doc: '>0, <=10000'
  type: long
  inputBinding:
    prefix: -E
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -T
- id: in_masking_thresh_slash_cut_ga
  doc: ''
  type: boolean
  inputBinding:
    prefix: --masking_thresh/--cut_ga
- id: in_annotation_thresh_slash_cut_tc
  doc: Default
  type: boolean
  inputBinding:
    prefix: --annotation_thresh/--cut_tc
- id: in_species
  doc: "Currently allowed are \"Other\", \"Homo sapiens\",\n\"Mus Musculus\", \"Danio\
    \ rerio\", \"Drosophila melanogaster\",\nor \"Caenorhabditis elegans\""
  type: string
  inputBinding:
    prefix: --species
- id: in_sort_by_eval
  doc: ''
  type: boolean
  inputBinding:
    prefix: --sortby_eval
- id: in_sort_by_model
  doc: ''
  type: boolean
  inputBinding:
    prefix: --sortby_model
- id: in_sort_by_seq
  doc: Default
  type: boolean
  inputBinding:
    prefix: --sortby_seq
- id: in_min_cov_frac
  doc: This is similar to the MaskLevel concept in
  type: string
  inputBinding:
    prefix: --min_cov_frac
- id: in_trf_outfile
  doc: Runs trf, put results in <s>; only with --fastafile
  type: string
  inputBinding:
    prefix: --trf_outfile
- id: in_cpu
  doc: Default 8
  type: long
  inputBinding:
    prefix: --cpu
- id: in_no_rph_removal
  doc: Don't remove redundant profile hits
  type: boolean
  inputBinding:
    prefix: --no_rph_removal
- id: in_log_file
  doc: ''
  type: string
  inputBinding:
    prefix: --log_file
- id: in_requires
  doc: --dfam_outfile <s>   Output file, also in dfamtblout format
  type: string
  inputBinding:
    position: 0
- id: in_crossmatch_dot
  doc: A match is considered non-redundant
  type: string
  inputBinding:
    position: 0
- id: in_zero_dot_seven_five
  doc: All optional
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_df_am_in_file
  doc: "Use this is you've already run nhmmscan, and\njust want to perfom dfamscan\
    \ filtering/sorting.\nThe file must be the one produced by nhmmscan's\n--dfamtblout\
    \ flag.\n(Note: must be nhmmscan output, not nhmmer output)"
  type: File
  outputBinding:
    glob: $(inputs.in_df_am_in_file)
cwlVersion: v1.1
baseCommand:
- dfamscan.pl
