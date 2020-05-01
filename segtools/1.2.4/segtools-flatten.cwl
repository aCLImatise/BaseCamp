#!/usr/bin/env cwl-runner

baseCommand:
- segtools-flatten
class: CommandLineTool
cwlVersion: v1.0
id: segtools-flatten
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: segmentation
  inputBinding:
    position: 1
  type: string
- doc: Do not print diagnostic messages.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Save mapping information to FILE instead of flat.mnemonics (default). This
    file complies with the mnemonic file format.
  id: mnemonic_file
  inputBinding:
    prefix: --mnemonic-file
  type: File
- doc: Save flattened bed file to FILE instead of printing to stdout (default)
  id: outfile
  inputBinding:
    prefix: --outfile
  type: File
- doc: Don't output new segment labels (and corresponding segments) that span less
    than F*N bases, where N is the number of bases covered by the new segmentation.
    This can be used to remove extremely uncommon labels (e.g. F = 0.01) that are
    the more likely to be spurious. Filtering is off by default.
  id: filter
  inputBinding:
    prefix: --filter
  type: string
