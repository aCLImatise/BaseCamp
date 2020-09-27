class: CommandLineTool
id: dfamscan.pl.cwl
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
- id: in_t_fmaskingthreshcutgaannotationthreshcuttc_defaultspecies
  doc: ">0, <=10000\n-T <f>\n--masking_thresh/--cut_ga\n--annotation_thresh/--cut_tc\
    \  Default\n--species <i>        Currently allowed are \"Other\", \"Homo sapiens\"\
    ,\n\"Mus Musculus\", \"Danio rerio\", \"Drosophila melanogaster\",\nor \"Caenorhabditis\
    \ elegans\""
  type: long
  inputBinding:
    prefix: -E
- id: in_sort_by_eval
  doc: "--sortby_model\n--sortby_seq         Default"
  type: boolean
  inputBinding:
    prefix: --sortby_eval
- id: in_min_cov_frac
  doc: This is similar to the MaskLevel concept in
  type: string
  inputBinding:
    prefix: --min_cov_frac
- id: in_trf_outfile
  doc: "Runs trf, put results in <s>; only with --fastafile\n--cpu <i>           \
    \ Default 8\n--no_rph_removal     Don't remove redundant profile hits\n--log_file\
    \ <s>\n"
  type: long
  inputBinding:
    prefix: --trf_outfile
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
