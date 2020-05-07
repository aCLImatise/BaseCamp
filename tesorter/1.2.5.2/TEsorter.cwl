class: CommandLineTool
id: TEsorter.cwl
inputs:
- id: sequence
  doc: input TE sequences in fasta format [required]
  type: string
  inputBinding:
    position: 0
- id: hmm_database
  doc: the database used [default=rexdb]
  type: string
  inputBinding:
    prefix: --hmm-database
- id: seq_type
  doc: "'nucl' for DNA or 'prot' for protein [default=nucl]"
  type: string
  inputBinding:
    prefix: --seq-type
- id: prefix
  doc: output prefix [default='{-s}.{-db}']
  type: string
  inputBinding:
    prefix: --prefix
- id: force_write_hmms_can
  doc: if False, will use the existed hmmscan outfile and skip hmmscan [default=False]
  type: boolean
  inputBinding:
    prefix: --force-write-hmmscan
- id: processors
  doc: processors to use [default=4]
  type: string
  inputBinding:
    prefix: --processors
- id: tmp_dir
  doc: directory for temporary files [default=./tmp]
  type: string
  inputBinding:
    prefix: --tmp-dir
- id: min_coverage
  doc: mininum coverage for protein domains in HMMScan output [default=20]
  type: long
  inputBinding:
    prefix: --min-coverage
- id: max_evalue
  doc: maxinum E-value for protein domains in HMMScan output [default=0.001]
  type: long
  inputBinding:
    prefix: --max-evalue
- id: disable_pass2
  doc: do not further classify the unclassified sequences [default=False for `nucl`,
    True for `prot`]
  type: boolean
  inputBinding:
    prefix: --disable-pass2
- id: pass2_rule
  doc: classifying rule [identity-coverage-length] in pass-2 based on similarity [default=80-80-80]
  type: string
  inputBinding:
    prefix: --pass2-rule
- id: no_library
  doc: do not generate a library file for RepeatMasker [default=False]
  type: boolean
  inputBinding:
    prefix: --no-library
- id: no_reverse
  doc: do not reverse complement sequences if they are detected in minus strand [default=False]
  type: boolean
  inputBinding:
    prefix: --no-reverse
- id: no_cleanup
  doc: do not clean up the temporary directory [default=False]
  type: boolean
  inputBinding:
    prefix: --no-cleanup
outputs: []
cwlVersion: v1.1
baseCommand:
- TEsorter
