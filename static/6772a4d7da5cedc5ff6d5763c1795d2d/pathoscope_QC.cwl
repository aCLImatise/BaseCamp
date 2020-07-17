class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pathoscope_QC.cwl
inputs:
- id: st_pair_read
  doc: 1st pair of read in PER or SER
  type: string
  inputBinding:
    prefix: '-1'
- id: nd_pair_read
  doc: 2nd pair of read in PER
  type: string
  inputBinding:
    prefix: '-2'
- id: let_us_know
  doc: let us know a mean read length (0:ignore. [1]:I want to know the range of read
    length after trimming, i:user_specified_mean_read_length)
  type: string
  inputBinding:
    prefix: -r
- id: specify_phred_offset
  doc: specify a phred offset used in encoding base quality(0:not sure?, [33]:phred+33,
    64:phred+64)
  type: string
  inputBinding:
    prefix: -t
- id: specify_output_directory
  doc: specify output directory in full path
  type: string
  inputBinding:
    prefix: -o
- id: tell_us_generates
  doc: tell us which sequencer generates the reads ([Illumina], PacBio, Roche454,
    IonTorrent)
  type: string
  inputBinding:
    prefix: -s
- id: specify_min_read
  doc: specify the min read length cutoff[35]
  type: string
  inputBinding:
    prefix: -m
- id: specify_adaptor_pathoqc
  doc: specify an adaptor (Y:have pathoQC detect it, [N]:ignore, ACGT:adaptor)
  type: string
  inputBinding:
    prefix: -a
- id: a_two
  doc: specify a second adaptor if it is different from the first one (Y:have pathoQC
    detect it, [N]:ignore, ACGT:adaptor)
  type: string
  inputBinding:
    prefix: -a2
- id: specify_cutoff_trim
  doc: specify a cutoff of base quality value to trim at the end of reads([0]:ignore,
    1:let pathoQC take care of it, i:user_specified_cutoff_value)
  type: string
  inputBinding:
    prefix: -q
- id: set_you_want
  doc: set to 1 if you want to mask all lower case bases that may correspond to sequence
    tag or adaptor in Roche454 or IonTorrent
  type: string
  inputBinding:
    prefix: -R
- id: specify_cutoff_filter
  doc: specify a cutoff of entropy of low sequence complexity to filter out[0..100],default:30,
    set 0 to disable
  type: string
  inputBinding:
    prefix: -e
- id: filtering_duplicates_duplicate
  doc: "filtering duplicates: [1] (exact duplicate), 2 (5' duplicate), 3 (3' duplicate),\
    \ 4 (reverse complement exact duplicate), 5 (reverse complement 5'/3' duplicate)"
  type: string
  inputBinding:
    prefix: -d
- id: set_want_set
  doc: Set to 1 if you want to add a valid single read into a reduced valid PER set.
    Note that this option works only with PER
  type: string
  inputBinding:
    prefix: -g
- id: no_prin_seq
  doc: to force to skip prinseq module
  type: boolean
  inputBinding:
    prefix: --no_prinseq
- id: specify_total_number
  doc: specify a total number of cpus to use[1]
  type: string
  inputBinding:
    prefix: -p
- id: debug
  doc: working on debug mode
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- pathoscope
- QC
