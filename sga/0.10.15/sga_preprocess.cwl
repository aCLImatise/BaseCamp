class: CommandLineTool
id: sga_preprocess.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: seed
  doc: set random seed
  type: boolean
  inputBinding:
    prefix: --seed
- id: out
  doc: 'write the reads to FILE (default: stdout)'
  type: File
  inputBinding:
    prefix: --out
- id: pe_mode
  doc: 0 - do not treat reads as paired (default) 1 - reads are paired with the first
    read in READS1 and the second read in READS2. The paired reads will be interleaved
    in the output file 2 - reads are paired and the records are interleaved within
    a single file.
  type: long
  inputBinding:
    prefix: --pe-mode
- id: pe_orphans
  doc: if one half of a read pair fails filtering, write the passed half to FILE
  type: File
  inputBinding:
    prefix: --pe-orphans
- id: phred64
  doc: convert quality values from phred-64 to phred-33.
  type: boolean
  inputBinding:
    prefix: --phred64
- id: discard_quality
  doc: do not output quality scores
  type: boolean
  inputBinding:
    prefix: --discard-quality
- id: quality_trim
  doc: "perform Heng Li's BWA quality trim algorithm.  Reads are trimmed according\
    \ to the formula: argmax_x{\\sum_{i=x+1}^l(INT-q_i)} if q_l<INT where l is the\
    \ original read length."
  type: long
  inputBinding:
    prefix: --quality-trim
- id: quality_filter
  doc: 'discard the read if it contains more than INT low-quality bases. Bases with
    phred score <= 3 are considered low quality. Default: no filtering. The filtering
    is applied after trimming so bases removed are not counted. Do not use this option
    if you are planning to use the BCR algorithm for indexing.'
  type: long
  inputBinding:
    prefix: --quality-filter
- id: min_length
  doc: 'discard sequences that are shorter than INT this is most useful when used
    in conjunction with --quality-trim. Default: 40'
  type: long
  inputBinding:
    prefix: --min-length
- id: hard_clip
  doc: clip all reads to be length INT. In most cases it is better to use the soft
    clip (quality-trim) option.
  type: long
  inputBinding:
    prefix: --hard-clip
- id: permute_ambiguous
  doc: Randomly change ambiguous base calls to one of possible bases. If this option
    is not specified, the entire read will be discarded.
  type: boolean
  inputBinding:
    prefix: --permute-ambiguous
- id: sample
  doc: Randomly sample reads or pairs with acceptance probability FLOAT.
  type: double
  inputBinding:
    prefix: --sample
- id: dust
  doc: Perform dust-style filtering of low complexity reads.
  type: boolean
  inputBinding:
    prefix: --dust
- id: dust_threshold
  doc: 'filter out reads that have a dust score higher than FLOAT (default: 4.0).'
  type: double
  inputBinding:
    prefix: --dust-threshold
- id: suffix
  doc: append SUFFIX to each read ID
  type: string
  inputBinding:
    prefix: --suffix
- id: remove_adapter_rev
  doc: Remove the adapter STRING from input reads.
  type: string
  inputBinding:
    prefix: --remove-adapter-rev
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- preprocess
