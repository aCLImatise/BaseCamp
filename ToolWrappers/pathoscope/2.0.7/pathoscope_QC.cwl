class: CommandLineTool
id: pathoscope_QC.cwl
inputs:
- id: in_st_pair_read
  doc: 1st pair of read in PER or SER
  type: long
  inputBinding:
    prefix: '-1'
- id: in_nd_pair_per
  doc: 2nd pair of read in PER
  type: long
  inputBinding:
    prefix: '-2'
- id: in_let_us_know
  doc: "let us know a mean read length (0:ignore. [1]:I want\nto know the range of\
    \ read length after trimming,\ni:user_specified_mean_read_length)"
  type: long
  inputBinding:
    prefix: -r
- id: in_specify_phred_offset
  doc: "specify a phred offset used in encoding base\nquality(0:not sure?, [33]:phred+33,\
    \ 64:phred+64)"
  type: long
  inputBinding:
    prefix: -t
- id: in_specify_output_directory
  doc: specify output directory in full path
  type: File
  inputBinding:
    prefix: -o
- id: in_tell_us_generates
  doc: "tell us which sequencer generates the reads\n([Illumina], PacBio, Roche454,\
    \ IonTorrent)"
  type: long
  inputBinding:
    prefix: -s
- id: in_specify_min_read
  doc: specify the min read length cutoff[35]
  type: long
  inputBinding:
    prefix: -m
- id: in_specify_adaptor_pathoqc
  doc: "specify an adaptor (Y:have pathoQC detect it,\n[N]:ignore, ACGT:adaptor)"
  type: string
  inputBinding:
    prefix: -a
- id: in_a_two
  doc: "specify a second adaptor if it is different from the\nfirst one (Y:have pathoQC\
    \ detect it, [N]:ignore,\nACGT:adaptor)"
  type: long
  inputBinding:
    prefix: -a2
- id: in_specify_cutoff_trim
  doc: "specify a cutoff of base quality value to trim at the\nend of reads([0]:ignore,\
    \ 1:let pathoQC take care of\nit, i:user_specified_cutoff_value)"
  type: long
  inputBinding:
    prefix: -q
- id: in_set_you_want_mask
  doc: "set to 1 if you want to mask all lower case bases that\nmay correspond to\
    \ sequence tag or adaptor in Roche454\nor IonTorrent"
  type: long
  inputBinding:
    prefix: -R
- id: in_specify_cutoff_set
  doc: "specify a cutoff of entropy of low sequence complexity\nto filter out[0..100],default:30,\
    \ set 0 to disable"
  type: double
  inputBinding:
    prefix: -e
- id: in_filtering_duplicates_duplicate
  doc: "filtering duplicates: [1] (exact duplicate), 2 (5'\nduplicate), 3 (3' duplicate),\
    \ 4 (reverse complement\nexact duplicate), 5 (reverse complement 5'/3'\nduplicate)"
  type: long
  inputBinding:
    prefix: -d
- id: in_set_you_want_add
  doc: "Set to 1 if you want to add a valid single read into a\nreduced valid PER\
    \ set. Note that this option works\nonly with PER"
  type: long
  inputBinding:
    prefix: -g
- id: in_no_prin_seq
  doc: to force to skip prinseq module
  type: boolean
  inputBinding:
    prefix: --no_prinseq
- id: in_specify_total_number
  doc: specify a total number of cpus to use[1]
  type: long
  inputBinding:
    prefix: -p
- id: in_debug
  doc: working on debug mode
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specify_output_directory
  doc: specify output directory in full path
  type: File
  outputBinding:
    glob: $(inputs.in_specify_output_directory)
cwlVersion: v1.1
baseCommand:
- pathoscope
- QC
