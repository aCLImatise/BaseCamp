class: CommandLineTool
id: bcftools_filter.cwl
inputs:
- id: in_exclude
  doc: exclude sites for which the expression is true (see man page for details)
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_snp_gap
  doc: '[:type]     filter SNPs within <int> base pairs of an indel (the default)
    or any combination of indel,mnp,bnd,other,overlap'
  type: long?
  inputBinding:
    prefix: --SnpGap
- id: in_in_del_gap
  doc: filter clusters of indels separated by <int> or fewer base pairs allowing only
    one to pass
  type: long?
  inputBinding:
    prefix: --IndelGap
- id: in_include
  doc: include only sites for which the expression is true (see man page for details
  type: string?
  inputBinding:
    prefix: --include
- id: in_mode
  doc: '[+x]               "+": do not replace but add to existing FILTER; "x": reset
    filters at sites which pass'
  type: boolean?
  inputBinding:
    prefix: --mode
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
  doc: 'b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed
    VCF [v]'
  type: string?
  inputBinding:
    prefix: --output-type
- id: in_regions
  doc: restrict to comma-separated list of regions
  type: string?
  inputBinding:
    prefix: --regions
- id: in_regions_file
  doc: restrict to regions listed in a file
  type: File?
  inputBinding:
    prefix: --regions-file
- id: in_soft_filter
  doc: annotate FILTER column with <string> or unique filter name ("Filter%d") made
    up by the program ("+")
  type: string?
  inputBinding:
    prefix: --soft-filter
- id: in_set_gts
  doc: <.|0>           set genotypes of failed samples to missing (.) or ref (0)
  type: boolean?
  inputBinding:
    prefix: --set-GTs
- id: in_targets
  doc: similar to -r but streams rather than index-jumps
  type: string?
  inputBinding:
    prefix: --targets
- id: in_targets_file
  doc: similar to -R but streams rather than index-jumps
  type: File?
  inputBinding:
    prefix: --targets-file
- id: in_threads
  doc: use multithreading with <int> worker threads [0]
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
  dockerPull: quay.io/biocontainers/bcftools:1.11--h7c999a4_0
cwlVersion: v1.1
baseCommand:
- bcftools
- filter
