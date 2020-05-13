class: CommandLineTool
id: bcftools_annotate.cwl
inputs:
- id: in_vcf_gz
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: annotations
  doc: 'VCF file or tabix-indexed file with annotations: CHR\tPOS[\tVALUE]+'
  type: File
  inputBinding:
    prefix: --annotations
- id: collapse
  doc: matching records by <snps|indels|both|all|some|none>, see man page for details
    [some]
  type: string
  inputBinding:
    prefix: --collapse
- id: columns
  doc: list of columns in the annotation file, e.g. CHROM,POS,REF,ALT,-,INFO/TAG.
    See man page for details
  type: string
  inputBinding:
    prefix: --columns
- id: exclude
  doc: exclude sites for which the expression is true (see man page for details)
  type: string
  inputBinding:
    prefix: --exclude
- id: force
  doc: continue despite parsing error (at your own risk!)
  type: boolean
  inputBinding:
    prefix: --force
- id: header_lines
  doc: lines which should be appended to the VCF header
  type: File
  inputBinding:
    prefix: --header-lines
- id: set_id
  doc: '[+]<format>       set ID column, see man page for details'
  type: boolean
  inputBinding:
    prefix: --set-id
- id: include
  doc: select sites for which the expression is true (see man page for details)
  type: string
  inputBinding:
    prefix: --include
- id: keep_sites
  doc: leave -i/-e sites unchanged instead of discarding them
  type: boolean
  inputBinding:
    prefix: --keep-sites
- id: merge_logic
  doc: <tag:type>   merge logic for multiple overlapping regions (see man page for
    details), EXPERIMENTAL
  type: boolean
  inputBinding:
    prefix: --merge-logic
- id: mark_sites
  doc: '[+-]<tag>     add INFO/tag flag to sites which are ("+") or are not ("-")
    listed in the -a file'
  type: boolean
  inputBinding:
    prefix: --mark-sites
- id: no_version
  doc: do not append version and command line to the header
  type: boolean
  inputBinding:
    prefix: --no-version
- id: output
  doc: write output to a file [standard output]
  type: File
  inputBinding:
    prefix: --output
- id: output_type
  doc: '<b|u|z|v>    b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v:
    uncompressed VCF [v]'
  type: boolean
  inputBinding:
    prefix: --output-type
- id: regions
  doc: restrict to comma-separated list of regions
  type: string
  inputBinding:
    prefix: --regions
- id: regions_file
  doc: restrict to regions listed in a file
  type: File
  inputBinding:
    prefix: --regions-file
- id: rename_chrs
  doc: 'rename sequences according to map file: from\tto'
  type: File
  inputBinding:
    prefix: --rename-chrs
- id: samples
  doc: '[^]<list>        comma separated list of samples to annotate (or exclude with
    "^" prefix)'
  type: boolean
  inputBinding:
    prefix: --samples
- id: samples_file
  doc: '[^]<file>   file of samples to annotate (or exclude with "^" prefix)'
  type: boolean
  inputBinding:
    prefix: --samples-file
- id: single_overlaps
  doc: keep memory low by avoiding complexities arising from handling multiple overlapping
    intervals
  type: boolean
  inputBinding:
    prefix: --single-overlaps
- id: remove
  doc: list of annotations (e.g. ID,INFO/DP,FORMAT/DP,FILTER) to remove (or keep with
    "^" prefix). See man page for details
  type: string
  inputBinding:
    prefix: --remove
- id: threads
  doc: number of extra output compression threads [0]
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- annotate
