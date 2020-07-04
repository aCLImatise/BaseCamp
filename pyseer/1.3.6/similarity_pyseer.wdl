version 1.0

task SimilarityPyseer {
  input {
    String? km_ers
    String? vcf
    String? pres
    Int? min_af
    Int? max_af
    Int? max_missing
    Boolean? uncompressed
    String samples
  }
  command <<<
    similarity_pyseer \
      ~{samples} \
      ~{if defined(km_ers) then ("--kmers " +  '"' + km_ers + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(pres) then ("--pres " +  '"' + pres + '"') else ""} \
      ~{if defined(min_af) then ("--min-af " +  '"' + min_af + '"') else ""} \
      ~{if defined(max_af) then ("--max-af " +  '"' + max_af + '"') else ""} \
      ~{if defined(max_missing) then ("--max-missing " +  '"' + max_missing + '"') else ""} \
      ~{true="--uncompressed" false="" uncompressed}
  >>>
  parameter_meta {
    km_ers: "Kmers file"
    vcf: "VCF file. Will filter any non 'PASS' sites"
    pres: "Presence/absence .Rtab matrix as produced by roary and piggy"
    min_af: "Minimum AF [Default: 0.01]"
    max_af: "Maximum AF [Default: 0.99]"
    max_missing: "Maximum missing (vcf/Rtab) [Default: 0.05]"
    uncompressed: "Uncompressed kmers file [Default: gzipped]"
    samples: "List of sample names to use"
  }
}