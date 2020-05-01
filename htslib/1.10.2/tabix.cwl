#!/usr/bin/env cwl-runner

baseCommand:
- tabix
class: CommandLineTool
cwlVersion: v1.0
id: tabix
inputs:
- doc: column number for region start [4]
  id: begin
  inputBinding:
    prefix: --begin
  type: long
- doc: skip comment lines starting with CHAR [null]
  id: comment
  inputBinding:
    prefix: --comment
  type: string
- doc: generate CSI index for VCF (default is TBI)
  id: csi
  inputBinding:
    prefix: --csi
  type: boolean
- doc: column number for region end (if no end, set INT to -b) [5]
  id: end
  inputBinding:
    prefix: --end
  type: long
- doc: overwrite existing index without asking
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: set minimal interval size for CSI indices to 2^INT [14]
  id: min_shift
  inputBinding:
    prefix: --min-shift
  type: long
- doc: gff, bed, sam, vcf
  id: preset
  inputBinding:
    prefix: --preset
  type: string
- doc: column number for sequence names (suppressed by -p) [1]
  id: sequence
  inputBinding:
    prefix: --sequence
  type: long
- doc: skip first INT lines [0]
  id: skip_lines
  inputBinding:
    prefix: --skip-lines
  type: long
- doc: print only the header lines
  id: only_header
  inputBinding:
    prefix: --only-header
  type: boolean
- doc: list chromosome names
  id: list_chrom_s
  inputBinding:
    prefix: --list-chroms
  type: boolean
- doc: replace the header with the content of FILE
  id: re_header
  inputBinding:
    prefix: --reheader
  type: File
- doc: restrict to regions listed in the file
  id: regions
  inputBinding:
    prefix: --regions
  type: File
- doc: similar to -R but streams rather than index-jumps
  id: targets
  inputBinding:
    prefix: --targets
  type: File
- doc: do not download the index file
  id: d
  inputBinding:
    prefix: -D
  type: boolean
