class: CommandLineTool
id: pathoscope_QC.cwl
inputs:
- id: r
  doc: let us know a mean read length (0:ignore. [1]:I want to know the range of read
    length after trimming, i:user_specified_mean_read_length)
  type: string
  inputBinding:
    prefix: -r
- id: t
  doc: specify a phred offset used in encoding base quality(0:not sure?, [33]:phred+33,
    64:phred+64)
  type: string
  inputBinding:
    prefix: -t
- id: o
  doc: specify output directory in full path
  type: string
  inputBinding:
    prefix: -o
- id: s
  doc: tell us which sequencer generates the reads ([Illumina], PacBio, Roche454,
    IonTorrent)
  type: string
  inputBinding:
    prefix: -s
- id: m
  doc: specify the min read length cutoff[35]
  type: string
  inputBinding:
    prefix: -m
- id: a
  doc: specify an adaptor (Y:have pathoQC detect it, [N]:ignore, ACGT:adaptor)
  type: string
  inputBinding:
    prefix: -a
- id: a2
  doc: specify a second adaptor if it is different from the first one (Y:have pathoQC
    detect it, [N]:ignore, ACGT:adaptor)
  type: string
  inputBinding:
    prefix: -a2
- id: q
  doc: specify a cutoff of base quality value to trim at the end of reads([0]:ignore,
    1:let pathoQC take care of it, i:user_specified_cutoff_value)
  type: string
  inputBinding:
    prefix: -q
- id: r
  doc: set to 1 if you want to mask all lower case bases that may correspond to sequence
    tag or adaptor in Roche454 or IonTorrent
  type: string
  inputBinding:
    prefix: -R
- id: e
  doc: specify a cutoff of entropy of low sequence complexity to filter out[0..100],default:30,
    set 0 to disable
  type: string
  inputBinding:
    prefix: -e
- id: d
  doc: "filtering duplicates: [1] (exact duplicate), 2 (5' duplicate), 3 (3' duplicate),\
    \ 4 (reverse complement exact duplicate), 5 (reverse complement 5'/3' duplicate)"
  type: string
  inputBinding:
    prefix: -d
- id: g
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
- id: p
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
