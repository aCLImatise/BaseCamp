version 1.0

task Vtoolsevaluate {
  input {
    File? call_vcf
    File? positive_vcf
    String? call_samples
    String? positive_samples
    File? stats
    File? discordant_vcf
    Float? min_qual
    Int? min_depth
  }
  command <<<
    vtools_evaluate \
      ~{if defined(call_vcf) then ("--call-vcf " +  '"' + call_vcf + '"') else ""} \
      ~{if defined(positive_vcf) then ("--positive-vcf " +  '"' + positive_vcf + '"') else ""} \
      ~{if defined(call_samples) then ("--call-samples " +  '"' + call_samples + '"') else ""} \
      ~{if defined(positive_samples) then ("--positive-samples " +  '"' + positive_samples + '"') else ""} \
      ~{if defined(stats) then ("--stats " +  '"' + stats + '"') else ""} \
      ~{if defined(discordant_vcf) then ("--discordant-vcf " +  '"' + discordant_vcf + '"') else ""} \
      ~{if defined(min_qual) then ("--min-qual " +  '"' + min_qual + '"') else ""} \
      ~{if defined(min_depth) then ("--min-depth " +  '"' + min_depth + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    call_vcf: "Path to VCF with calls to be evaluated\\n[required]"
    positive_vcf: "Path to VCF with known calls  [required]"
    call_samples: "Sample(s) in call-vcf to consider. May be\\ncalled multiple times  [required]"
    positive_samples: "Sample(s) in positive-vcf to consider. May be\\ncalled multiple times  [required]"
    stats: "Path to output stats json file"
    discordant_vcf: "Path to output the discordant vcf file"
    min_qual: "Minimum quality of variants to consider"
    min_depth: "Minimum depth of variants to consider"
  }
  output {
    File out_stdout = stdout()
    File out_stats = "${in_stats}"
    File out_discordant_vcf = "${in_discordant_vcf}"
  }
}