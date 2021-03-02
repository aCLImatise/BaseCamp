class: CommandLineTool
id: cadd.sh.cwl
inputs:
- id: in_tsvgz_file_generated
  doc: out tsv.gz file (generated from input file name if not set)
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_genome_build_supported
  doc: 'genome build (supported are GRCh37 and GRCh38 [default: GRCh38])'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_cadd_version_only
  doc: 'CADD version (only v1.6 possible with this set of scripts [default: v1.6])'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_include_annotation_required
  doc: "include annotation in output\ninput vcf of vcf.gz file (required)"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_print_basic_information
  doc: print basic information about snakemake run
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_print_full_information
  doc: print full information about the snakemake run
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_number_cores_snakemake
  doc: 'number of cores that snakemake is allowed to use [default: 1]'
  type: boolean?
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cadd-scripts:1.6--0
cwlVersion: v1.1
baseCommand:
- cadd.sh
