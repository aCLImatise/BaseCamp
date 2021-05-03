class: CommandLineTool
id: abyss_mergepairs.cwl
inputs:
- id: in_prefix
  doc: the prefix of all output files [out]
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_identity
  doc: minimum overlap identity [0.9]
  type: double?
  inputBinding:
    prefix: --identity
- id: in_matches
  doc: minimum number of matches in overlap [10]
  type: long?
  inputBinding:
    prefix: --matches
- id: in_length_one
  doc: "trim bases from 3' end of first read\ndown to a maximum of N bp long [inf]"
  type: long?
  inputBinding:
    prefix: --length1
- id: in_length_two
  doc: "trim bases from 3' end of second read\ndown to a maximum of N bp long [inf]"
  type: long?
  inputBinding:
    prefix: --length2
- id: in_chastity
  doc: discard unchaste reads [default]
  type: boolean?
  inputBinding:
    prefix: --chastity
- id: in_no_chastity
  doc: do not discard unchaste reads
  type: boolean?
  inputBinding:
    prefix: --no-chastity
- id: in_trim_masked
  doc: trim masked bases from the ends of reads
  type: boolean?
  inputBinding:
    prefix: --trim-masked
- id: in_no_trim_masked
  doc: "do not trim masked bases from the ends\nof reads [default]"
  type: boolean?
  inputBinding:
    prefix: --no-trim-masked
- id: in_trim_quality
  doc: "trim bases from the ends of reads whose\nquality is less than the threshold"
  type: string?
  inputBinding:
    prefix: --trim-quality
- id: in_standard_quality
  doc: "zero quality is `!' (33)\ndefault for FASTQ and SAM files"
  type: boolean?
  inputBinding:
    prefix: --standard-quality
- id: in_illumina_quality
  doc: "zero quality is `@' (64)\ndefault for qseq and export files"
  type: boolean?
  inputBinding:
    prefix: --illumina-quality
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.3.1--hd403d74_0
cwlVersion: v1.1
baseCommand:
- abyss-mergepairs
