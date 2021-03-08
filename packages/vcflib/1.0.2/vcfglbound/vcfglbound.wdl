version 1.0

task Vcfglbound {
  input {
    String? bound
    Boolean? exclude_broken
    File vcf_file
  }
  command <<<
    vcfglbound \
      ~{vcf_file} \
      ~{if defined(bound) then ("--bound " +  '"' + bound + '"') else ""} \
      ~{if (exclude_broken) then "--exclude-broken" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0"
  }
  parameter_meta {
    bound: "Bound GLs to this limit."
    exclude_broken: "If GLs are > 0, remove site."
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}