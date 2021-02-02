version 1.0

task VsnpMergeVcfIntoFastapy {
  input {
    File? fast_a_file
    File? vcf_file
    String? qual_threshold
    String? map_threshold
    Boolean? ambiguity_not
    File? r
    String prog
    String merge_vcf_into_fasta_do_tpy
  }
  command <<<
    vsnp_merge_vcf_into_fasta_py \
      ~{prog} \
      ~{merge_vcf_into_fasta_do_tpy} \
      ~{if defined(fast_a_file) then ("--fasta_file " +  '"' + fast_a_file + '"') else ""} \
      ~{if defined(vcf_file) then ("--vcf_file " +  '"' + vcf_file + '"') else ""} \
      ~{if defined(qual_threshold) then ("--qual_threshold " +  '"' + qual_threshold + '"') else ""} \
      ~{if defined(map_threshold) then ("--map_threshold " +  '"' + map_threshold + '"') else ""} \
      ~{if (ambiguity_not) then "--ambiguity_NOT" else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    fast_a_file: "REQUIRED: In file to be processed"
    vcf_file: "REQUIRED: In file to be processed"
    qual_threshold: "OPTIONAL: QUAL values below this value will not be\\napplied."
    map_threshold: "OPTIONAL: Map Quality values below this value will not\\nbe applied."
    ambiguity_not: "OPTIONAL: when -a used ambiguity will not be applied.\\nBy default it will be applied."
    r: ""
    prog: ""
    merge_vcf_into_fasta_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}