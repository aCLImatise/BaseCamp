version 1.0

task DEploidDbg {
  input {
    String? version
    String? vcf
    String? ref
    String? alt
    String? plaf
    String? panel
    String? exclude
    String? _specify_prefix
    Int? _out_put
    Int? _number_strain
    Int? seed
    Int? n_sample
    Int? rate
    Boolean? no_panel
    Boolean? forbid_update_prop
    Boolean? forbid_update_single
    Boolean? forbid_update_pair
    String? initial_p
    String? h
  }
  command <<<
    dEploid_dbg \
      ~{if defined(version) then ("-version " +  '"' + version + '"') else ""} \
      ~{if defined(vcf) then ("-vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if defined(alt) then ("-alt " +  '"' + alt + '"') else ""} \
      ~{if defined(plaf) then ("-plaf " +  '"' + plaf + '"') else ""} \
      ~{if defined(panel) then ("-panel " +  '"' + panel + '"') else ""} \
      ~{if defined(exclude) then ("-exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(_specify_prefix) then ("-o " +  '"' + _specify_prefix + '"') else ""} \
      ~{if defined(_out_put) then ("-p " +  '"' + _out_put + '"') else ""} \
      ~{if defined(_number_strain) then ("-k " +  '"' + _number_strain + '"') else ""} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""} \
      ~{if defined(n_sample) then ("-nSample " +  '"' + n_sample + '"') else ""} \
      ~{if defined(rate) then ("-rate " +  '"' + rate + '"') else ""} \
      ~{true="-noPanel" false="" no_panel} \
      ~{true="-forbidUpdateProp" false="" forbid_update_prop} \
      ~{true="-forbidUpdateSingle" false="" forbid_update_single} \
      ~{true="-forbidUpdatePair" false="" forbid_update_pair} \
      ~{if defined(initial_p) then ("-initialP " +  '"' + initial_p + '"') else ""} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  parameter_meta {
    version: "--  DEploid version."
    vcf: "--  VCF file path."
    ref: "--  File path of reference allele count."
    alt: "--  File path of alternative allele count."
    plaf: "--  File path of population level allele frequencies."
    panel: "--  File path of the reference panel."
    exclude: "--  File path of sites to be excluded."
    _specify_prefix: "--  Specify the file name prefix of the output."
    _out_put: "--  Out put precision (default value 8)."
    _number_strain: "--  Number of strain (default value 5)."
    seed: "--  Random seed."
    n_sample: "--  Number of MCMC samples."
    rate: "--  MCMC sample rate."
    no_panel: "--  Use population level allele frequency as prior."
    forbid_update_prop: "--  Forbid MCMC moves to update proportions."
    forbid_update_single: "--  Forbid MCMC moves to update single haplotype."
    forbid_update_pair: "--  Forbid MCMC moves to update pair haplotypes."
    initial_p: "...  --  Initialize proportions."
    h: ""
  }
}