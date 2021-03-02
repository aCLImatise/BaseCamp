class: CommandLineTool
id: merTrim.cwl
inputs:
- id: in_input_reads
  doc: input reads
  type: string?
  inputBinding:
    prefix: -F
- id: in_output_reads
  doc: output reads
  type: string?
  inputBinding:
    prefix: -o
- id: in_truth_reads_validation
  doc: truth reads for validation
  type: string?
  inputBinding:
    prefix: -T
- id: in_mer_size
  doc: mer size
  type: long?
  inputBinding:
    prefix: -m
- id: in_kmer_database_in
  doc: kmer database (in 'counts.mcdat' and 'counts.mcidx')
  type: string?
  inputBinding:
    prefix: -mc
- id: in_enable_cache
  doc: dump the final kmer data to 'counts.merTrimDB'
  type: boolean?
  inputBinding:
    prefix: -enablecache
- id: in_coverage
  doc: "mers with count below n can be changed\n(that is, count >= n are correct mers)"
  type: string?
  inputBinding:
    prefix: -coverage
- id: in_evidence
  doc: mers with count at least n will be used for changes
  type: string?
  inputBinding:
    prefix: -evidence
- id: in_screen_adapter_sequences
  doc: screen for these adapter sequences
  type: string?
  inputBinding:
    prefix: -mC
- id: in_mc_illumina
  doc: screen for common Illumina adapter sequences
  type: boolean?
  inputBinding:
    prefix: -mCillumina
- id: in_mc_four_five_four
  doc: screen for common 454 adapter and linker sequences
  type: boolean?
  inputBinding:
    prefix: -mC454
- id: in_end_trim
  doc: (undocumented)
  type: boolean?
  inputBinding:
    prefix: -endtrim
- id: in_not_rimming
  doc: do only correction, no trimming
  type: boolean?
  inputBinding:
    prefix: -notrimming
- id: in_discard_zero
  doc: trash the whole read if coverage drops to zero in the middle
  type: boolean?
  inputBinding:
    prefix: -discardzero
- id: in_discard_imperfect
  doc: trash the whole read if coverage isn't perfect
  type: boolean?
  inputBinding:
    prefix: -discardimperfect
- id: in_not_rim_imperfect
  doc: do NOT trim off ends that make the coverage imperfect
  type: boolean?
  inputBinding:
    prefix: -notrimimperfect
- id: in_end_trim_qv
  doc: trim ends of reads if they are below qv Q (Sanger encoded; default '2')
  type: long?
  inputBinding:
    prefix: -endtrimqv
- id: in_nm
  doc: do NOT correct mismatch errors
  type: boolean?
  inputBinding:
    prefix: -NM
- id: in_ni
  doc: do NOT correct indel errors
  type: boolean?
  inputBinding:
    prefix: -NI
- id: in_use_t_cpu
  doc: use T CPU cores
  type: string?
  inputBinding:
    prefix: -t
- id: in_report_progress_stderr
  doc: report progress to stderr
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_report_trimming_evidence
  doc: report trimming evidence to stdout (more -V -> more reports)
  type: boolean?
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- merTrim
