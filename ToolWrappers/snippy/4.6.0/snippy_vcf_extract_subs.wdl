version 1.0

task SnippyvcfExtractSubs {
  input {
    Boolean? debug
    String? ref
    Boolean? haploid
    String? info_tags
    String? format_tags
    String? filter
  }
  command <<<
    snippy_vcf_extract_subs \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if (haploid) then "--haploid" else ""} \
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
  output {
    File out_stdout = stdout()
  }
}