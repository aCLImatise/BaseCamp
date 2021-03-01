class: CommandLineTool
id: testformat2.sh.cwl
inputs:
- id: in_junk_reads
  doc: Reads with invalid bases or other problems.
  type: boolean?
  inputBinding:
    prefix: -JunkReads
- id: in_chastity_fail
  doc: Reads failing Illumina's chastity filter.
  type: boolean?
  inputBinding:
    prefix: -ChastityFail
- id: in_bad_pair_names
  doc: Read pairs whose names don't match.
  type: boolean?
  inputBinding:
    prefix: -BadPairNames
- id: in_lowercase
  doc: Lowercase bases.
  type: boolean?
  inputBinding:
    prefix: -Lowercase
- id: in_uppercase
  doc: Uppercase bases.
  type: boolean?
  inputBinding:
    prefix: -Uppercase
- id: in_non_letter
  doc: Non-letter symbols in bases.
  type: boolean?
  inputBinding:
    prefix: -Non-Letter
- id: in_fully_defined
  doc: A, C, G, T, or U bases.
  type: boolean?
  inputBinding:
    prefix: -FullyDefined
- id: in_no_call
  doc: N bases.
  type: boolean?
  inputBinding:
    prefix: -No-call
- id: in_degenerate
  doc: Non-ACGTUN valid IUPAC symbols.
  type: boolean?
  inputBinding:
    prefix: -Degenerate
- id: in_gap
  doc: '- symbol.'
  type: boolean?
  inputBinding:
    prefix: -Gap
- id: in_invalid
  doc: Symbols that are not valid characters for sequence.
  type: boolean?
  inputBinding:
    prefix: -Invalid
- id: in_insert_mean
  doc: Average insert size, from merging.
  type: boolean?
  inputBinding:
    prefix: -InsertMean
- id: in_insert_mode
  doc: Insert size mode from, merging.
  type: boolean?
  inputBinding:
    prefix: -InsertMode
- id: in_adapter_reads
  doc: Fraction of reads with adapter sequence, from merging.
  type: boolean?
  inputBinding:
    prefix: -AdapterReads
- id: in_adapter_bases
  doc: Fraction of bases that are adapter sequence, from merging.
  type: boolean?
  inputBinding:
    prefix: -AdapterBases
- id: in_q_avg_log
  doc: Logarithmic average quality score.
  type: boolean?
  inputBinding:
    prefix: -QAvgLog
- id: in_q_avg_linear
  doc: Linear average quality score.
  type: boolean?
  inputBinding:
    prefix: -QAvgLinear
- id: in_trimmed_at_q_five
  doc: Fraction of bases trimmed at Q5.
  type: boolean?
  inputBinding:
    prefix: -TrimmedAtQ5
- id: in_trimmed_at_q_one_zero
  doc: Fraction of bases trimmed at Q10.
  type: boolean?
  inputBinding:
    prefix: -TrimmedAtQ10
- id: in_trimmed_at_q_one_five
  doc: Fraction of bases trimmed at Q15.
  type: boolean?
  inputBinding:
    prefix: -TrimmedAtQ15
- id: in_trimmed_at_q_two_zero
  doc: Fraction of bases trimmed at Q20.
  type: boolean?
  inputBinding:
    prefix: -TrimmedAtQ20
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- testformat2.sh
