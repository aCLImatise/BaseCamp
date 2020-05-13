class: CommandLineTool
id: tabix.cwl
inputs:
- id: begin
  doc: column number for region start [4]
  type: long
  inputBinding:
    prefix: --begin
- id: comment
  doc: skip comment lines starting with CHAR [null]
  type: string
  inputBinding:
    prefix: --comment
- id: csi
  doc: generate CSI index for VCF (default is TBI)
  type: boolean
  inputBinding:
    prefix: --csi
- id: end
  doc: column number for region end (if no end, set INT to -b) [5]
  type: long
  inputBinding:
    prefix: --end
- id: force
  doc: overwrite existing index without asking
  type: boolean
  inputBinding:
    prefix: --force
- id: min_shift
  doc: set minimal interval size for CSI indices to 2^INT [14]
  type: long
  inputBinding:
    prefix: --min-shift
- id: preset
  doc: gff, bed, sam, vcf
  type: string
  inputBinding:
    prefix: --preset
- id: sequence
  doc: column number for sequence names (suppressed by -p) [1]
  type: long
  inputBinding:
    prefix: --sequence
- id: skip_lines
  doc: skip first INT lines [0]
  type: long
  inputBinding:
    prefix: --skip-lines
- id: only_header
  doc: print only the header lines
  type: boolean
  inputBinding:
    prefix: --only-header
- id: list_chrom_s
  doc: list chromosome names
  type: boolean
  inputBinding:
    prefix: --list-chroms
- id: re_header
  doc: replace the header with the content of FILE
  type: File
  inputBinding:
    prefix: --reheader
- id: regions
  doc: restrict to regions listed in the file
  type: File
  inputBinding:
    prefix: --regions
- id: targets
  doc: similar to -R but streams rather than index-jumps
  type: File
  inputBinding:
    prefix: --targets
- id: d
  doc: do not download the index file
  type: boolean
  inputBinding:
    prefix: -D
outputs: []
cwlVersion: v1.1
baseCommand:
- tabix
