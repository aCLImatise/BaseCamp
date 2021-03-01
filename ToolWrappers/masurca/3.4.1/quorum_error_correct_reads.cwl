class: CommandLineTool
id: quorum_error_correct_reads.cwl
inputs:
- id: in_thread
  doc: Number of threads (1)
  type: long?
  inputBinding:
    prefix: --thread
- id: in_min_count
  doc: Minimum count for a k-mer to be considered "good" (1)
  type: long?
  inputBinding:
    prefix: --min-count
- id: in_skip
  doc: Number of bases to skip for start k-mer (1)
  type: long?
  inputBinding:
    prefix: --skip
- id: in_good
  doc: Number of good k-mer in a row for anchor (2)
  type: long?
  inputBinding:
    prefix: --good
- id: in_anchor_count
  doc: Minimum count for an anchor k-mer (3)
  type: long?
  inputBinding:
    prefix: --anchor-count
- id: in_window
  doc: Size of window (10)
  type: long?
  inputBinding:
    prefix: --window
- id: in_error
  doc: Maximum number of error in a window (3)
  type: long?
  inputBinding:
    prefix: --error
- id: in_output
  doc: Output file prefix (error_corrected)
  type: File?
  inputBinding:
    prefix: --output
- id: in_contaminant
  doc: Jellyfish database of contaminant k-mers
  type: File?
  inputBinding:
    prefix: --contaminant
- id: in_trim_contaminant
  doc: Trim reads containing contaminated k-mers instead of discarding (false)
  type: boolean?
  inputBinding:
    prefix: --trim-contaminant
- id: in_homo_trim
  doc: Trim homo-polymer run at the 3' end
  type: long?
  inputBinding:
    prefix: --homo-trim
- id: in_gzip
  doc: Gzip output file (false)
  type: File?
  inputBinding:
    prefix: --gzip
- id: in_no_mmap
  doc: Do not memory map the input mer database (false)
  type: boolean?
  inputBinding:
    prefix: --no-mmap
- id: in_a_priori_error_rate
  doc: Probability of a base being an error (0.01)
  type: double?
  inputBinding:
    prefix: --apriori-error-rate
- id: in_poisson_threshold
  doc: Error probability threshold in Poisson test (1.0e-06)
  type: double?
  inputBinding:
    prefix: --poisson-threshold
- id: in_cut_off
  doc: Poisson cutoff when there are multiple choices
  type: long?
  inputBinding:
    prefix: --cutoff
- id: in_qual_cut_off_value
  doc: Any base above with quality equal or greater is untouched when there are multiple
    choices
  type: long?
  inputBinding:
    prefix: --qual-cutoff-value
- id: in_qual_cut_off_char
  doc: Any base above with quality equal or greater is untouched when there are multiple
    choices
  type: string?
  inputBinding:
    prefix: --qual-cutoff-char
- id: in_no_discard
  doc: Do not discard reads, output a single N (false)
  type: boolean?
  inputBinding:
    prefix: --no-discard
- id: in_verbose
  doc: Be verbose (false)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_error_correct_reads
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_db
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file prefix (error_corrected)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_gzip
  doc: Gzip output file (false)
  type: File?
  outputBinding:
    glob: $(inputs.in_gzip)
hints: []
cwlVersion: v1.1
baseCommand:
- quorum_error_correct_reads
