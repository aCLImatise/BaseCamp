class: CommandLineTool
id: bgziptabix.cwl
inputs:
- id: in_zero_based
  doc: coordinates are zero-based
  type: boolean?
  inputBinding:
    prefix: --zero-based
- id: in_begin
  doc: column number for region start [4]
  type: long?
  inputBinding:
    prefix: --begin
- id: in_comment
  doc: skip comment lines starting with CHAR [null]
  type: string?
  inputBinding:
    prefix: --comment
- id: in_csi
  doc: generate CSI index for VCF (default is TBI)
  type: boolean?
  inputBinding:
    prefix: --csi
- id: in_end
  doc: column number for region end (if no end, set INT to -b) [5]
  type: long?
  inputBinding:
    prefix: --end
- id: in_force
  doc: overwrite existing index without asking
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_min_shift
  doc: set minimal interval size for CSI indices to 2^INT [14]
  type: long?
  inputBinding:
    prefix: --min-shift
- id: in_preset
  doc: gff, bed, sam, vcf
  type: string?
  inputBinding:
    prefix: --preset
- id: in_sequence
  doc: column number for sequence names (suppressed by -p) [1]
  type: long?
  inputBinding:
    prefix: --sequence
- id: in_skip_lines
  doc: skip first INT lines [0]
  type: long?
  inputBinding:
    prefix: --skip-lines
- id: in_only_header
  doc: print only the header lines
  type: boolean?
  inputBinding:
    prefix: --only-header
- id: in_list_chrom_s
  doc: list chromosome names
  type: boolean?
  inputBinding:
    prefix: --list-chroms
- id: in_re_header
  doc: replace the header with the content of FILE
  type: File?
  inputBinding:
    prefix: --reheader
- id: in_regions
  doc: restrict to regions listed in the file
  type: File?
  inputBinding:
    prefix: --regions
- id: in_targets
  doc: similar to -R but streams rather than index-jumps
  type: File?
  inputBinding:
    prefix: --targets
- id: in_download_index_file
  doc: do not download the index file
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_tab_ix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1
cwlVersion: v1.1
baseCommand:
- bgziptabix
