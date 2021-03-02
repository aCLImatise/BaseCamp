class: CommandLineTool
id: TEsorter.cwl
inputs:
- id: in_hmm_database
  doc: the database used [default=rexdb]
  type: string?
  inputBinding:
    prefix: --hmm-database
- id: in_seq_type
  doc: "'nucl' for DNA or 'prot' for protein [default=nucl]"
  type: string?
  inputBinding:
    prefix: --seq-type
- id: in_prefix
  doc: output prefix [default='{-s}.{-db}']
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_force_write_hmms_can
  doc: "if False, will use the existed hmmscan outfile and\nskip hmmscan [default=False]"
  type: boolean?
  inputBinding:
    prefix: --force-write-hmmscan
- id: in_processors
  doc: processors to use [default=4]
  type: long?
  inputBinding:
    prefix: --processors
- id: in_tmp_dir
  doc: directory for temporary files [default=./tmp]
  type: Directory?
  inputBinding:
    prefix: --tmp-dir
- id: in_min_coverage
  doc: "mininum coverage for protein domains in HMMScan output\n[default=20]"
  type: long?
  inputBinding:
    prefix: --min-coverage
- id: in_max_evalue
  doc: "maxinum E-value for protein domains in HMMScan output\n[default=0.001]"
  type: long?
  inputBinding:
    prefix: --max-evalue
- id: in_disable_pass_two
  doc: "do not further classify the unclassified sequences\n[default=False for `nucl`,\
    \ True for `prot`]"
  type: boolean?
  inputBinding:
    prefix: --disable-pass2
- id: in_pass_two_rule
  doc: "classifying rule [identity-coverage-length] in pass-2\nbased on similarity\
    \ [default=80-80-80]"
  type: long?
  inputBinding:
    prefix: --pass2-rule
- id: in_no_library
  doc: "do not generate a library file for RepeatMasker\n[default=False]"
  type: boolean?
  inputBinding:
    prefix: --no-library
- id: in_no_reverse
  doc: "do not reverse complement sequences if they are\ndetected in minus strand\
    \ [default=False]"
  type: boolean?
  inputBinding:
    prefix: --no-reverse
- id: in_no_cleanup
  doc: "do not clean up the temporary directory\n[default=False]\n"
  type: boolean?
  inputBinding:
    prefix: --no-cleanup
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tesorter:1.3.0--py_0
cwlVersion: v1.1
baseCommand:
- TEsorter
