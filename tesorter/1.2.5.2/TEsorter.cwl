#!/usr/bin/env cwl-runner

baseCommand:
- TEsorter
class: CommandLineTool
cwlVersion: v1.0
id: tesorter
inputs:
- doc: input TE sequences in fasta format [required]
  id: sequence
  inputBinding:
    position: 0
  type: string
- doc: the database used [default=rexdb]
  id: hmm_database
  inputBinding:
    prefix: --hmm-database
  type: string
- doc: "'nucl' for DNA or 'prot' for protein [default=nucl]"
  id: seq_type
  inputBinding:
    prefix: --seq-type
  type: string
- doc: output prefix [default='{-s}.{-db}']
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: if False, will use the existed hmmscan outfile and skip hmmscan [default=False]
  id: force_write_hmms_can
  inputBinding:
    prefix: --force-write-hmmscan
  type: boolean
- doc: processors to use [default=4]
  id: processors
  inputBinding:
    prefix: --processors
  type: string
- doc: directory for temporary files [default=./tmp]
  id: tmp_dir
  inputBinding:
    prefix: --tmp-dir
  type: string
- doc: mininum coverage for protein domains in HMMScan output [default=20]
  id: min_coverage
  inputBinding:
    prefix: --min-coverage
  type: long
- doc: maxinum E-value for protein domains in HMMScan output [default=0.001]
  id: max_evalue
  inputBinding:
    prefix: --max-evalue
  type: long
- doc: do not further classify the unclassified sequences [default=False for `nucl`,
    True for `prot`]
  id: disable_pass2
  inputBinding:
    prefix: --disable-pass2
  type: boolean
- doc: classifying rule [identity-coverage-length] in pass-2 based on similarity [default=80-80-80]
  id: pass2_rule
  inputBinding:
    prefix: --pass2-rule
  type: string
- doc: do not generate a library file for RepeatMasker [default=False]
  id: no_library
  inputBinding:
    prefix: --no-library
  type: boolean
- doc: do not reverse complement sequences if they are detected in minus strand [default=False]
  id: no_reverse
  inputBinding:
    prefix: --no-reverse
  type: boolean
- doc: do not clean up the temporary directory [default=False]
  id: no_cleanup
  inputBinding:
    prefix: --no-cleanup
  type: boolean
