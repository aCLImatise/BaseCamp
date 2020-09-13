version 1.0

task SimilarityPyseer {
  input {
    File? km_ers
    File? vcf
    String? pres
    Int? max_af
    Int? max_missing
    Boolean? uncompressed
    String piggy
  }
  command <<<
    similarity_pyseer \
      ~{piggy} \
      ~{if defined(km_ers) then ("--kmers " +  '"' + km_ers + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(pres) then ("--pres " +  '"' + pres + '"') else ""} \
      ~{if defined(max_af) then ("--max-af " +  '"' + max_af + '"') else ""} \
      ~{if defined(max_missing) then ("--max-missing " +  '"' + max_missing + '"') else ""} \
      ~{if (uncompressed) then "--uncompressed" else ""}
  >>>
  parameter_meta {
    km_ers: "Kmers file"
    vcf: "VCF file. Will filter any non 'PASS' sites"
    pres: "Presence/absence .Rtab matrix as produced by roary and"
    max_af: "Maximum AF [Default: 0.99]"
    max_missing: "Maximum missing (vcf/Rtab) [Default: 0.05]"
    uncompressed: "Uncompressed kmers file [Default: gzipped]"
    piggy: "--min-af MIN_AF       Minimum AF [Default: 0.01]"
  }
  output {
    File out_stdout = stdout()
  }
}