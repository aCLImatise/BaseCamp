class: CommandLineTool
id: bcftools_csq.cwl
inputs:
- id: in_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_ref
  doc: reference file in fasta format
  type: File
  inputBinding:
    prefix: --fasta-ref
- id: gff_an_not
  doc: gff3 annotation file
  type: File
  inputBinding:
    prefix: --gff-annot
- id: brief_predictions
  doc: annotate with abbreviated protein-changing predictions
  type: boolean
  inputBinding:
    prefix: --brief-predictions
- id: custom_tag
  doc: use this tag instead of the default BCSQ
  type: string
  inputBinding:
    prefix: --custom-tag
- id: local_csq
  doc: localized predictions, consider only one VCF record at a time
  type: boolean
  inputBinding:
    prefix: --local-csq
- id: nc_sq
  doc: maximum number of consequences to consider per site [16]
  type: long
  inputBinding:
    prefix: --ncsq
- id: phase
  doc: '<a|m|r|R|s>         how to handle unphased heterozygous genotypes: [r] a:
    take GTs as is, create haplotypes regardless of phase (0/1 -> 0|1) m: merge *all*
    GTs into a single haplotype (0/1 -> 1, 1/2 -> 1) r: require phased GTs, throw
    an error on unphased het GTs R: create non-reference haplotypes if possible (0/1
    -> 1|1, 1/2 -> 1|2) s: skip unphased hets'
  type: boolean
  inputBinding:
    prefix: --phase
- id: exclude
  doc: exclude sites for which the expression is true
  type: string
  inputBinding:
    prefix: --exclude
- id: force
  doc: run even if some sanity checks fail
  type: boolean
  inputBinding:
    prefix: --force
- id: include
  doc: select sites for which the expression is true
  type: string
  inputBinding:
    prefix: --include
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
  doc: '<b|u|z|v|t>   b: compressed BCF, u: uncompressed BCF, z: compressed VCF v:
    uncompressed VCF, t: plain tab-delimited text output [v]'
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
- id: samples
  doc: <-|list>          samples to include or "-" to apply all variants and ignore
    samples
  type: boolean
  inputBinding:
    prefix: --samples
- id: samples_file
  doc: samples to include
  type: File
  inputBinding:
    prefix: --samples-file
- id: targets
  doc: similar to -r but streams rather than index-jumps
  type: string
  inputBinding:
    prefix: --targets
- id: targets_file
  doc: similar to -R but streams rather than index-jumps
  type: File
  inputBinding:
    prefix: --targets-file
- id: threads
  doc: use multithreading with <int> worker threads [0]
  type: long
  inputBinding:
    prefix: --threads
- id: verbose
  doc: verbosity level 0-2 [1]
  type: long
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- csq
