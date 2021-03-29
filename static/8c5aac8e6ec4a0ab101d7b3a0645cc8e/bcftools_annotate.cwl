class: CommandLineTool
id: bcftools_annotate.cwl
inputs:
- id: in_annotations
  doc: 'VCF file or tabix-indexed FILE with annotations: CHR\tPOS[\tVALUE]+'
  type: File?
  inputBinding:
    prefix: --annotations
- id: in_collapse
  doc: matching records by <snps|indels|both|all|some|none>, see man page for details
    [some]
  type: string?
  inputBinding:
    prefix: --collapse
- id: in_columns
  doc: list of columns in the annotation file, e.g. CHROM,POS,REF,ALT,-,INFO/TAG.
    See man page for details
  type: File?
  inputBinding:
    prefix: --columns
- id: in_columns_file
  doc: 'read -c columns from FILE, one name per row, with optional --merge-logic TYPE:
    NAME[ TYPE]'
  type: File?
  inputBinding:
    prefix: --columns-file
- id: in_exclude
  doc: exclude sites for which the expression is true (see man page for details)
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_force
  doc: continue despite parsing error (at your own risk!)
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_header_lines
  doc: lines which should be appended to the VCF header
  type: File?
  inputBinding:
    prefix: --header-lines
- id: in_set_id
  doc: '[+]FORMAT       set ID column using a `bcftools query`-like expression, see
    man page for details'
  type: boolean?
  inputBinding:
    prefix: --set-id
- id: in_include
  doc: select sites for which the expression is true (see man page for details)
  type: string?
  inputBinding:
    prefix: --include
- id: in_keep_sites
  doc: leave -i/-e sites unchanged instead of discarding them
  type: boolean?
  inputBinding:
    prefix: --keep-sites
- id: in_merge_logic
  doc: :TYPE   merge logic for multiple overlapping regions (see man page for details),
    EXPERIMENTAL
  type: string?
  inputBinding:
    prefix: --merge-logic
- id: in_mark_sites
  doc: '[+-]TAG     add INFO/TAG flag to sites which are ("+") or are not ("-") listed
    in the -a file'
  type: boolean?
  inputBinding:
    prefix: --mark-sites
- id: in_no_version
  doc: do not append version and command line to the header
  type: boolean?
  inputBinding:
    prefix: --no-version
- id: in_output
  doc: write output to a file [standard output]
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_type
  doc: '[b|u|z|v]  b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed
    VCF [v]'
  type: boolean?
  inputBinding:
    prefix: --output-type
- id: in_regions
  doc: restrict to comma-separated list of regions
  type: string?
  inputBinding:
    prefix: --regions
- id: in_regions_file
  doc: restrict to regions listed in FILE
  type: File?
  inputBinding:
    prefix: --regions-file
- id: in_rename_an_not_s
  doc: 'rename annotations: TYPE/old\tnew, where TYPE is one of FILTER,INFO,FORMAT'
  type: File?
  inputBinding:
    prefix: --rename-annots
- id: in_rename_chrs
  doc: 'rename sequences according to the mapping: old\tnew'
  type: File?
  inputBinding:
    prefix: --rename-chrs
- id: in_samples
  doc: '[^]LIST        comma separated list of samples to annotate (or exclude with
    "^" prefix)'
  type: boolean?
  inputBinding:
    prefix: --samples
- id: in_samples_file
  doc: '[^]FILE   file of samples to annotate (or exclude with "^" prefix)'
  type: boolean?
  inputBinding:
    prefix: --samples-file
- id: in_single_overlaps
  doc: keep memory low by avoiding complexities arising from handling multiple overlapping
    intervals
  type: boolean?
  inputBinding:
    prefix: --single-overlaps
- id: in_remove
  doc: list of annotations (e.g. ID,INFO/DP,FORMAT/DP,FILTER) to remove (or keep with
    "^" prefix). See man page for details
  type: string?
  inputBinding:
    prefix: --remove
- id: in_threads
  doc: number of extra output compression threads [0]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_in_dot_vcf_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: write output to a file [standard output]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bcftools:1.12--h3f113a9_0
cwlVersion: v1.1
baseCommand:
- bcftools
- annotate
