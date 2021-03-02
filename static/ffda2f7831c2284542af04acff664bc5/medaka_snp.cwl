class: CommandLineTool
id: medaka_snp.cwl
inputs:
- id: in_debug
  doc: 'Verbose logging of debug information. (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: 'Minimal logging; warnings only). (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_regions
  doc: "Genomic ref_names to process, or a bed file. (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: --regions
- id: in_threshold
  doc: "Threshold for considering secondary calls. A value of\n1 will result in haploid\
    \ decoding. (default: 0.04)"
  type: double?
  inputBinding:
    prefix: --threshold
- id: in_ref_vcf
  doc: 'Reference vcf. (default: None)'
  type: string?
  inputBinding:
    prefix: --ref_vcf
- id: in_verbose
  doc: 'Populate VCF info fields. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_ref_fast_a
  doc: Reference sequence .fasta file.
  type: string
  inputBinding:
    position: 0
- id: in_inputs
  doc: Consensus .hdf files.
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: Output .vcf.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/medaka:1.2.3--py36hbcc4abb_0
cwlVersion: v1.1
baseCommand:
- medaka
- snp
