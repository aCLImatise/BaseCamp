version 1.0

task VsnpMergeVcfIntoFasta.py {
  input {
    String? fast_a_file
    String? vcf_file
    String? qual_threshold
    String? map_threshold
    Boolean? ambiguity_not
    String prog
  }
  command <<<
    vsnp_merge_vcf_into_fasta.py \
      ~{prog} \
      ~{if defined(fast_a_file) then ("--fasta_file " +  '"' + fast_a_file + '"') else ""} \
      ~{if defined(vcf_file) then ("--vcf_file " +  '"' + vcf_file + '"') else ""} \
      ~{if defined(qual_threshold) then ("--qual_threshold " +  '"' + qual_threshold + '"') else ""} \
      ~{if defined(map_threshold) then ("--map_threshold " +  '"' + map_threshold + '"') else ""} \
      ~{true="--ambiguity_NOT" false="" ambiguity_not}
  >>>
  parameter_meta {
    fast_a_file: "REQUIRED: In file to be processed"
    vcf_file: "REQUIRED: In file to be processed"
    qual_threshold: "OPTIONAL: QUAL values below this value will not be applied."
    map_threshold: "OPTIONAL: Map Quality values below this value will not be applied."
    ambiguity_not: "OPTIONAL: when -a used ambiguity will not be applied. By default it will be applied."
    prog: ""
  }
}