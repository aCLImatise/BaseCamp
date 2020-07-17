version 1.0

task SnippyVcfExtractSubs {
  input {
    Boolean? debug
    String? ref
    Boolean? haploid
    String? info_tags
    String? format_tags
    String? filter
  }
  command <<<
    snippy-vcf_extract_subs \
      ~{true="--debug" false="" debug} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{true="--haploid" false="" haploid} \
      ~{if defined(info_tags) then ("--info-tags " +  '"' + info_tags + '"') else ""} \
      ~{if defined(format_tags) then ("--format-tags " +  '"' + format_tags + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""}
  >>>
  parameter_meta {
    debug: "+        Output verbose debug info (default '0')."
    ref: "FASTA reference (default '')."
    haploid: "!      Convert to haploid genotypes (default '0')."
    info_tags: "Keep these INFO tags (default 'TYPE,DP,RO,AO,AF')."
    format_tags: "Keep these FORMAT tags (default 'GT,DP,RO,AO,QR,QA')."
    filter: "Set FILTER to this (default '')."
  }
}