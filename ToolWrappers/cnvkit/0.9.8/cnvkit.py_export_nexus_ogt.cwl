class: CommandLineTool
id: cnvkit.py_export_nexus_ogt.cwl
inputs:
- id: in_sample_id
  doc: "Specify the name of the sample in the VCF to use to\nextract b-allele frequencies."
  type: string?
  inputBinding:
    prefix: --sample-id
- id: in_normal_id
  doc: Corresponding normal sample ID in the input VCF.
  type: string?
  inputBinding:
    prefix: --normal-id
- id: in_min_variant_depth
  doc: "Minimum read depth for a SNV to be included in the\nb-allele frequency calculation.\
    \ [Default: 20]"
  type: long?
  inputBinding:
    prefix: --min-variant-depth
- id: in_ignore_vcfs_genotypes
  doc: "[ALT_FREQ], --zygosity-freq [ALT_FREQ]\nIgnore VCF's genotypes (GT field)\
    \ and instead infer\nzygosity from allele frequencies. [Default if used\nwithout\
    \ a number: 0.25]"
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_min_weight
  doc: "Minimum weight (between 0 and 1) for a bin to be\nincluded in the output.\
    \ [Default: 0.0]"
  type: long?
  inputBinding:
    prefix: --min-weight
- id: in_output
  doc: "Output file name.\n"
  type: File?
  inputBinding:
    prefix: --output
- id: in_filename
  doc: "Log2 copy ratio data file (*.cnr), the output of the\n'fix' sub-command."
  type: File
  inputBinding:
    position: 0
- id: in_vcf
  doc: VCF of SNVs for the same sample, to calculate b-allele
  type: string
  inputBinding:
    position: 1
- id: in_frequencies_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file name.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cnvkit:0.9.8--py_0
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- export
- nexus-ogt
