version 1.0

task SlivarExpr {
  input {
    File? vcf
    File? region
    File? exclude
    File? js
    File? ped
    File? path_file_group
    File? out_vcf
    Boolean? pass_only
    Boolean? skip_non_variable
    File? trio
    File? family_expr
    String? group_expr
    String? sample_expr
    String? info
    File? g_notate
    String sli_var
  }
  command <<<
    slivar expr \
      ~{sli_var} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(js) then ("--js " +  '"' + js + '"') else ""} \
      ~{if defined(ped) then ("--ped " +  '"' + ped + '"') else ""} \
      ~{if defined(path_file_group) then ("--alias " +  '"' + path_file_group + '"') else ""} \
      ~{if defined(out_vcf) then ("--out-vcf " +  '"' + out_vcf + '"') else ""} \
      ~{if (pass_only) then "--pass-only" else ""} \
      ~{if (skip_non_variable) then "--skip-non-variable" else ""} \
      ~{if defined(trio) then ("--trio " +  '"' + trio + '"') else ""} \
      ~{if defined(family_expr) then ("--family-expr " +  '"' + family_expr + '"') else ""} \
      ~{if defined(group_expr) then ("--group-expr " +  '"' + group_expr + '"') else ""} \
      ~{if defined(sample_expr) then ("--sample-expr " +  '"' + sample_expr + '"') else ""} \
      ~{if defined(info) then ("--info " +  '"' + info + '"') else ""} \
      ~{if defined(g_notate) then ("--gnotate " +  '"' + g_notate + '"') else ""}
  >>>
  parameter_meta {
    vcf: "path to VCF/BCF"
    region: "optional region to limit evaluation. e.g. chr1 or 1:222-333 (or a BED file of regions)"
    exclude: "BED file of exclude regions (will never output excluded variants regardless of pass-only flag)"
    js: "path to javascript functions to expose to user"
    ped: "pedigree file with family relations, sex, and affected status"
    path_file_group: "path to file of group aliases"
    out_vcf: "path to output VCF/BCF (default: /dev/stdout)"
    pass_only: "only output variants that pass at least one of the filters"
    skip_non_variable: "don't evaluate expression unless at least 1 sample is variable at the variant this can improve speed"
    trio: "expression(s) applied to each trio where 'mom', 'dad', 'kid' labels are available; trios inferred from ped file."
    family_expr: "expression(s) applied to each family where 'fam' is available with a list of samples in each family from ped file."
    group_expr: "expression(s) applied to the groups defined in the alias option [see: https://github.com/brentp/slivar/wiki/groups-in-slivar]."
    sample_expr: "expression(s) applied to each sample in the VCF."
    info: "expression using only attributes from  the INFO field or variant. If this does not pass trio/group/sample expressions are not applied."
    g_notate: "path(s) to compressed gnotate file(s)"
    sli_var: ""
  }
  output {
    File out_stdout = stdout()
    File out_exclude = "${in_exclude}"
    File out_out_vcf = "${in_out_vcf}"
  }
}