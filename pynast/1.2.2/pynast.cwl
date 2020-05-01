#!/usr/bin/env cwl-runner

baseCommand:
- pynast
class: CommandLineTool
cwlVersion: v1.0
id: pynast
inputs:
- doc: path to template alignment file [REQUIRED]
  id: template_fp
  inputBinding:
    prefix: --template_fp
  type: string
- doc: path to input fasta file [REQUIRED]
  id: input_fp
  inputBinding:
    prefix: --input_fp
  type: string
- doc: 'Print status and other information during execution [default: False]'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'minimum percent sequence  identity to consider a sequence a match [default:
    75.0]'
  id: min_pct_id
  inputBinding:
    prefix: --min_pct_id
  type: long
- doc: 'minimum sequence length to include in NAST alignment [default: 1000]'
  id: min_len
  inputBinding:
    prefix: --min_len
  type: long
- doc: 'method for performing pairwise alignment [default: uclust]'
  id: pairwise_alignment_method
  inputBinding:
    prefix: --pairwise_alignment_method
  type: string
- doc: 'path to store resulting alignment file [default: derived from input filepath]'
  id: fast_a_out_fp
  inputBinding:
    prefix: --fasta_out_fp
  type: string
- doc: 'path to store log file [default: derived from input filepath]'
  id: log_fp
  inputBinding:
    prefix: --log_fp
  type: string
- doc: 'path to store file of seqs which fail to align [default: derived from input
    filepath]'
  id: failure_fp
  inputBinding:
    prefix: --failure_fp
  type: string
- doc: 'path to store any temp files that are created [default: /tmp]'
  id: temp_dir
  inputBinding:
    prefix: --temp_dir
  type: string
- doc: Deprecated. Will be removed in PyNAST 1.3
  id: max_e_value
  inputBinding:
    prefix: --max_e_value
  type: long
- doc: Deprecated. Will be removed in PyNAST 1.3
  id: blast_db
  inputBinding:
    prefix: --blast_db
  type: string
