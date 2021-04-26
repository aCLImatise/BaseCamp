version 1.0

task MegalodonExtrasPhaseVariantsWhatshapFilter {
  input {
    File? filtered_records
    String in_vcf
    String out_vcf
  }
  command <<<
    megalodon_extras phase_variants whatshap_filter \
      ~{in_vcf} \
      ~{out_vcf} \
      ~{if defined(filtered_records) then ("--filtered-records " +  '"' + filtered_records + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megalodon:2.3.1--py38h4a8c8d9_0"
  }
  parameter_meta {
    filtered_records: "File to output filtered records.\\n"
    in_vcf: "Megalodon VCF file"
    out_vcf: "Output VCF file"
  }
  output {
    File out_stdout = stdout()
    File out_filtered_records = "${in_filtered_records}"
  }
}