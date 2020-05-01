#!/usr/bin/env cwl-runner

baseCommand:
- taxator
class: CommandLineTool
cwlVersion: v1.0
id: taxator
inputs:
- doc: show citation info
  id: citation
  inputBinding:
    prefix: --citation
  type: boolean
- doc: show advanced program options
  id: advanced_options
  inputBinding:
    prefix: --advanced-options
  type: boolean
- doc: '[ --algorithm ] arg (=rpa)      set the algorithm that is used to predict  taxonomic
    ids from alignments'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: '[ --seqid-taxid-mapping ] arg   filename of seqid->taxid mapping for  reference'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: '[ --query-sequences ] arg       query sequences FASTA'
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: '[ --query-sequences-index ] arg query sequences FASTA index, for  out-of-memory
    operation; is created if not existing'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: '[ --ref-sequences ] arg         reference sequences FASTA'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '[ --ref-sequences-index ] arg   FASTA file index, for out-of-memory  operation;
    is created if not existing'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '[ --processors ] arg (=1)       sets number of threads, number > 2 will  heavily
    profit from multi-core  architectures, set to 0 for max.  performance'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[ --logfile ] arg (=/dev/null)  specify name of file for logging  (appending
    lines)'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
