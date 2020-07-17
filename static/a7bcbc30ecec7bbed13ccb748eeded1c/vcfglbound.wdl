version 1.0

task Vcfglbound {
  input {
    String? bound
    Boolean? exclude_broken
    String vcf_file
  }
  command <<<
    vcfglbound \
      ~{vcf_file} \
      ~{if defined(bound) then ("--bound " +  '"' + bound + '"') else ""} \
      ~{true="--exclude-broken" false="" exclude_broken}
  >>>
  parameter_meta {
    bound: "Bound GLs to this limit."
    exclude_broken: "If GLs are > 0, remove site."
    vcf_file: ""
  }
}