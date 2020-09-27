class: CommandLineTool
id: bcftools_csq.cwl
inputs:
- id: in_fast_a_ref
  doc: reference file in fasta format
  type: File
  inputBinding:
    prefix: --fasta-ref
- id: in_gff_an_not
  doc: gff3 annotation file
  type: File
  inputBinding:
    prefix: --gff-annot
- id: in_brief_predictions
  doc: annotate with abbreviated protein-changing predictions
  type: boolean
  inputBinding:
    prefix: --brief-predictions
- id: in_custom_tag
  doc: use this tag instead of the default BCSQ
  type: string
  inputBinding:
    prefix: --custom-tag
- id: in_local_csq
  doc: localized predictions, consider only one VCF record at a time
  type: boolean
  inputBinding:
    prefix: --local-csq
- id: in_nc_sq
  doc: maximum number of consequences to consider per site [16]
  type: long
  inputBinding:
    prefix: --ncsq
- id: in_phase
  doc: "how to handle unphased heterozygous genotypes: [r]\na: take GTs as is, create\
    \ haplotypes regardless of phase (0/1 -> 0|1)\nm: merge *all* GTs into a single\
    \ haplotype (0/1 -> 1, 1/2 -> 1)\nr: require phased GTs, throw an error on unphased\
    \ het GTs\nR: create non-reference haplotypes if possible (0/1 -> 1|1, 1/2 ->\
    \ 1|2)\ns: skip unphased hets"
  type: long
  inputBinding:
    prefix: --phase
- id: in_exclude
  doc: exclude sites for which the expression is true
  type: string
  inputBinding:
    prefix: --exclude
- id: in_force
  doc: run even if some sanity checks fail
  type: boolean
  inputBinding:
    prefix: --force
- id: in_include
  doc: select sites for which the expression is true
  type: string
  inputBinding:
    prefix: --include
- id: in_no_version
  doc: do not append version and command line to the header
  type: boolean
  inputBinding:
    prefix: --no-version
- id: in_output
  doc: write output to a file [standard output]
  type: File
  inputBinding:
    prefix: --output
- id: in_output_type
  doc: "b: compressed BCF, u: uncompressed BCF, z: compressed VCF\nv: uncompressed\
    \ VCF, t: plain tab-delimited text output [v]"
  type: string
  inputBinding:
    prefix: --output-type
- id: in_regions
  doc: restrict to comma-separated list of regions
  type: string
  inputBinding:
    prefix: --regions
- id: in_regions_file
  doc: restrict to regions listed in a file
  type: File
  inputBinding:
    prefix: --regions-file
- id: in_samples
  doc: <-|list>          samples to include or "-" to apply all variants and ignore
    samples
  type: boolean
  inputBinding:
    prefix: --samples
- id: in_samples_file
  doc: samples to include
  type: File
  inputBinding:
    prefix: --samples-file
- id: in_targets
  doc: similar to -r but streams rather than index-jumps
  type: string
  inputBinding:
    prefix: --targets
- id: in_targets_file
  doc: similar to -R but streams rather than index-jumps
  type: File
  inputBinding:
    prefix: --targets-file
- id: in_threads
  doc: use multithreading with <int> worker threads [0]
  type: long
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: verbosity level 0-2 [1]
  type: long
  inputBinding:
    prefix: --verbose
- id: in_in_dot_vcf
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
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- bcftools
- csq
