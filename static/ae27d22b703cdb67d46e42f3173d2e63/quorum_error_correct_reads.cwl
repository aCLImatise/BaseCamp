class: CommandLineTool
id: quorum_error_correct_reads.cwl
inputs:
- id: thread
  doc: Number of threads (1)
  type: string
  inputBinding:
    prefix: --thread
- id: min_count
  doc: Minimum count for a k-mer to be considered "good" (1)
  type: string
  inputBinding:
    prefix: --min-count
- id: skip
  doc: Number of bases to skip for start k-mer (1)
  type: string
  inputBinding:
    prefix: --skip
- id: good
  doc: Number of good k-mer in a row for anchor (2)
  type: string
  inputBinding:
    prefix: --good
- id: anchor_count
  doc: Minimum count for an anchor k-mer (3)
  type: string
  inputBinding:
    prefix: --anchor-count
- id: window
  doc: Size of window (10)
  type: string
  inputBinding:
    prefix: --window
- id: error
  doc: Maximum number of error in a window (3)
  type: string
  inputBinding:
    prefix: --error
- id: output
  doc: Output file prefix (error_corrected)
  type: string
  inputBinding:
    prefix: --output
- id: contaminant
  doc: Jellyfish database of contaminant k-mers
  type: File
  inputBinding:
    prefix: --contaminant
- id: trim_contaminant
  doc: Trim reads containing contaminated k-mers instead of discarding (false)
  type: boolean
  inputBinding:
    prefix: --trim-contaminant
- id: homo_trim
  doc: Trim homo-polymer run at the 3' end
  type: long
  inputBinding:
    prefix: --homo-trim
- id: gzip
  doc: Gzip output file (false)
  type: boolean
  inputBinding:
    prefix: --gzip
- id: no_mmap
  doc: Do not memory map the input mer database (false)
  type: boolean
  inputBinding:
    prefix: --no-mmap
- id: a_priori_error_rate
  doc: Probability of a base being an error (0.01)
  type: string
  inputBinding:
    prefix: --apriori-error-rate
- id: poisson_threshold
  doc: Error probability threshold in Poisson test (1.0e-06)
  type: string
  inputBinding:
    prefix: --poisson-threshold
- id: cut_off
  doc: Poisson cutoff when there are multiple choices
  type: string
  inputBinding:
    prefix: --cutoff
- id: qual_cut_off_value
  doc: Any base above with quality equal or greater is untouched when there are multiple
    choices
  type: string
  inputBinding:
    prefix: --qual-cutoff-value
- id: qual_cut_off_char
  doc: Any base above with quality equal or greater is untouched when there are multiple
    choices
  type: string
  inputBinding:
    prefix: --qual-cutoff-char
- id: no_discard
  doc: Do not discard reads, output a single N (false)
  type: boolean
  inputBinding:
    prefix: --no-discard
- id: verbose
  doc: Be verbose (false)
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- quorum_error_correct_reads
