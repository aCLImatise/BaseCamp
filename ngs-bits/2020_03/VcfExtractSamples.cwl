#!/usr/bin/env cwl-runner

baseCommand:
- VcfExtractSamples
class: CommandLineTool
cwlVersion: v1.0
id: vcfextractsamples
inputs:
- doc: Comma-separated list of samples to extract (in the given order).
  id: samples
  inputBinding:
    prefix: -samples
  type: string
- doc: "Input VCF file. If unset, reads from STDIN. Default value: ''"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output VCF list. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: Prints changeloge and exits.
  id: changelog
  inputBinding:
    prefix: --changelog
  type: boolean
- doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  id: tdx
  inputBinding:
    prefix: --tdx
  type: boolean
