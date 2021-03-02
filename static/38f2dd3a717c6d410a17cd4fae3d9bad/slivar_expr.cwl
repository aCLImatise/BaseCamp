class: CommandLineTool
id: slivar_expr.cwl
inputs:
- id: in_vcf
  doc: path to VCF/BCF
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_region
  doc: optional region to limit evaluation. e.g. chr1 or 1:222-333 (or a BED file
    of regions)
  type: File?
  inputBinding:
    prefix: --region
- id: in_exclude
  doc: BED file of exclude regions (will never output excluded variants regardless
    of pass-only flag)
  type: File?
  inputBinding:
    prefix: --exclude
- id: in_js
  doc: path to javascript functions to expose to user
  type: File?
  inputBinding:
    prefix: --js
- id: in_ped
  doc: pedigree file with family relations, sex, and affected status
  type: File?
  inputBinding:
    prefix: --ped
- id: in_alias
  doc: path to file of group aliases
  type: File?
  inputBinding:
    prefix: --alias
- id: in_out_vcf
  doc: 'path to output VCF/BCF (default: /dev/stdout)'
  type: File?
  inputBinding:
    prefix: --out-vcf
- id: in_pass_only
  doc: only output variants that pass at least one of the filters
  type: boolean?
  inputBinding:
    prefix: --pass-only
- id: in_skip_non_variable
  doc: don't evaluate expression unless at least 1 sample is variable at the variant
    this can improve speed
  type: boolean?
  inputBinding:
    prefix: --skip-non-variable
- id: in_trio
  doc: expression(s) applied to each trio where 'mom', 'dad', 'kid' labels are available;
    trios inferred from ped file.
  type: File?
  inputBinding:
    prefix: --trio
- id: in_family_expr
  doc: expression(s) applied to each family where 'fam' is available with a list of
    samples in each family from ped file.
  type: File?
  inputBinding:
    prefix: --family-expr
- id: in_group_expr
  doc: 'expression(s) applied to the groups defined in the alias option [see: https://github.com/brentp/slivar/wiki/groups-in-slivar].'
  type: string?
  inputBinding:
    prefix: --group-expr
- id: in_sample_expr
  doc: expression(s) applied to each sample in the VCF.
  type: string?
  inputBinding:
    prefix: --sample-expr
- id: in_info
  doc: expression using only attributes from  the INFO field or variant. If this does
    not pass trio/group/sample expressions are not applied.
  type: string?
  inputBinding:
    prefix: --info
- id: in_g_notate
  doc: path(s) to compressed gnotate file(s)
  type: File?
  inputBinding:
    prefix: --gnotate
- id: in_sli_var
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_exclude
  doc: BED file of exclude regions (will never output excluded variants regardless
    of pass-only flag)
  type: File?
  outputBinding:
    glob: $(inputs.in_exclude)
- id: out_out_vcf
  doc: 'path to output VCF/BCF (default: /dev/stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_out_vcf)
hints: []
cwlVersion: v1.1
baseCommand:
- slivar
- expr
