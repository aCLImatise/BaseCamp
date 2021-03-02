class: CommandLineTool
id: stride_preprocess.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_out
  doc: 'write the reads to FILE (default: stdout)'
  type: File?
  inputBinding:
    prefix: --out
- id: in_pe_mode
  doc: "0 - do not treat reads as paired (default)\n1 - reads are paired with the\
    \ first read in READS1 and the second\nread in READS2. The paired reads will be\
    \ interleaved in the output file\n2 - reads are paired and the records are interleaved\
    \ within a single file."
  type: File?
  inputBinding:
    prefix: --pe-mode
- id: in_pe_orphans
  doc: if one half of a read pair fails filtering, write the passed half to FILE
  type: File?
  inputBinding:
    prefix: --pe-orphans
- id: in_phred_six_four
  doc: convert quality values from phred-64 to phred-33.
  type: boolean?
  inputBinding:
    prefix: --phred64
- id: in_discard_quality
  doc: do not output quality scores
  type: boolean?
  inputBinding:
    prefix: --discard-quality
- id: in_quality_trim
  doc: "perform Heng Li's BWA quality trim algorithm.\nReads are trimmed according\
    \ to the formula:\nargmax_x{\\sum_{i=x+1}^l(INT-q_i)} if q_l<INT\nwhere l is the\
    \ original read length."
  type: long?
  inputBinding:
    prefix: --quality-trim
- id: in_quality_filter
  doc: "discard the read if it contains more than INT low-quality bases.\nBases with\
    \ phred score <= 3 are considered low quality. Default: no filtering.\nThe filtering\
    \ is applied after trimming so bases removed are not counted.\nDo not use this\
    \ option if you are planning to use the BCR algorithm for indexing."
  type: long?
  inputBinding:
    prefix: --quality-filter
- id: in_min_length
  doc: "discard sequences that are shorter than INT\nthis is most useful when used\
    \ in conjunction with --quality-trim. Default: 40"
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_hard_clip
  doc: "clip all reads to be length INT. In most cases it is better to use\nthe soft\
    \ clip (quality-trim) option."
  type: long?
  inputBinding:
    prefix: --hard-clip
- id: in_permute_ambiguous
  doc: "Randomly change ambiguous base calls to one of possible bases.\nIf this option\
    \ is not specified, the entire read will be discarded."
  type: boolean?
  inputBinding:
    prefix: --permute-ambiguous
- id: in_sample
  doc: Randomly sample reads or pairs with acceptance probability FLOAT.
  type: double?
  inputBinding:
    prefix: --sample
- id: in_dust
  doc: Perform dust-style filtering of low complexity reads.
  type: boolean?
  inputBinding:
    prefix: --dust
- id: in_dust_threshold
  doc: 'filter out reads that have a dust score higher than FLOAT (default: 4.0).'
  type: double?
  inputBinding:
    prefix: --dust-threshold
- id: in_suffix
  doc: append SUFFIX to each read ID
  type: string?
  inputBinding:
    prefix: --suffix
- id: in_no_primer_check
  doc: disable the default check for primer sequences
  type: boolean?
  inputBinding:
    prefix: --no-primer-check
- id: in_remove_adapter_fwd
  doc: Remove the adapter STRING from input reads.
  type: string?
  inputBinding:
    prefix: --remove-adapter-fwd
- id: in_prepare
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reads_one
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_pe_mode
  doc: "0 - do not treat reads as paired (default)\n1 - reads are paired with the\
    \ first read in READS1 and the second\nread in READS2. The paired reads will be\
    \ interleaved in the output file\n2 - reads are paired and the records are interleaved\
    \ within a single file."
  type: File?
  outputBinding:
    glob: $(inputs.in_pe_mode)
hints: []
cwlVersion: v1.1
baseCommand:
- stride
- preprocess
