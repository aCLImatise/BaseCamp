class: CommandLineTool
id: nxtrim.cwl
inputs:
- id: in_one
  doc: '[ --r1 ] arg                 read 1 in fastq format (gzip allowed)'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: '[ --r2 ] arg                 read 2 in fastq format (gzip allowed)'
  type: boolean
  inputBinding:
    prefix: '-2'
- id: in_arg_output_prefix
  doc: '[ --output-prefix ] arg      output prefix'
  type: boolean
  inputBinding:
    prefix: -O
- id: in_just_mp
  doc: just creates a the mp/unknown libraries (reads with adapter at the start will
    be completely N masked)
  type: boolean
  inputBinding:
    prefix: --justmp
- id: in_stdout
  doc: print trimmed reads to stdout (equivalent to justmp)
  type: boolean
  inputBinding:
    prefix: --stdout
- id: in_stdout_mp
  doc: print only known MP reads to stdout (good for scaffolding)
  type: boolean
  inputBinding:
    prefix: --stdout-mp
- id: in_stdout_un
  doc: print only unknown reads to stdout
  type: boolean
  inputBinding:
    prefix: --stdout-un
- id: in_rf
  doc: leave mate pair reads in RF orientation [by default are flipped into FR]
  type: boolean
  inputBinding:
    prefix: --rf
- id: in_preserve_mp
  doc: preserve MPs even when the corresponding PE has longer reads
  type: boolean
  inputBinding:
    prefix: --preserve-mp
- id: in_ignore_pf
  doc: ignore chastity/purity filters in read headers
  type: boolean
  inputBinding:
    prefix: --ignorePF
- id: in_separate
  doc: output paired reads in separate files (prefix_R1/prefix_r2). Default is interleaved.
  type: boolean
  inputBinding:
    prefix: --separate
- id: in_aggressive
  doc: more aggressive adapter search (see docs/adapter.md)
  type: boolean
  inputBinding:
    prefix: --aggressive
- id: in_similarity
  doc: (=0.85)    The minimum similarity between strings to be considered a match
    (Hamming distance divided by string length)
  type: long
  inputBinding:
    prefix: --similarity
- id: in_min_overlap
  doc: (=12)      The minimum overlap to be considered for matching
  type: long
  inputBinding:
    prefix: --minoverlap
- id: in_minlength
  doc: (=21)      The minimum read length to output (smaller reads will be filtered)
  type: long
  inputBinding:
    prefix: --minlength
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nxtrim
