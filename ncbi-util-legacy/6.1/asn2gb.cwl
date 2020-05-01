#!/usr/bin/env cwl-runner

baseCommand:
- asn2gb
class: CommandLineTool
cwlVersion: v1.0
id: asn2gb
inputs:
- doc: 'ASN.1 Type Single Record: a Any, e Seq-entry, b Bioseq, s Bioseq-set, m Seq-submit,
    q Catenated Release File: t Batch Bioseq-set, u Batch Seq-submit'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
