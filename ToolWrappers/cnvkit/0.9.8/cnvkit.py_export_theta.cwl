class: CommandLineTool
id: cnvkit.py_export_theta.cwl
inputs:
- id: in_reference
  doc: "Reference copy number profile (.cnn), or normal-sample\nbin-level log2 copy\
    \ ratios (.cnr). Use if the\ntumor_segment input file does not contain a \"weight\"\
    \ncolumn."
  type: long?
  inputBinding:
    prefix: --reference
- id: in_output
  doc: Output file name.
  type: File?
  inputBinding:
    prefix: --output
- id: in_vcf
  doc: "VCF file containing SNVs observed in both the tumor\nand normal samples. Tumor\
    \ sample ID should match the\n`tumor_segment` filename or be specified with\n\
    -i/--sample-id."
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_sample_id
  doc: "Specify the name of the tumor sample in the VCF (given\nwith -v/--vcf). [Default:\
    \ taken the tumor_segment file\nname]"
  type: File?
  inputBinding:
    prefix: --sample-id
- id: in_normal_id
  doc: Corresponding normal sample ID in the input VCF.
  type: string?
  inputBinding:
    prefix: --normal-id
- id: in_min_variant_depth
  doc: "Minimum read depth for a SNP in the VCF to be counted.\n[Default: 20]"
  type: long?
  inputBinding:
    prefix: --min-variant-depth
- id: in_ignore_vcfs_genotypes
  doc: "[ALT_FREQ], --zygosity-freq [ALT_FREQ]\nIgnore VCF's genotypes (GT field)\
    \ and instead infer\nzygosity from allele frequencies. [Default if used\nwithout\
    \ a number: 0.25]\n"
  type: boolean?
  inputBinding:
    prefix: -z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file name.
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
- theta
