version 1.0

task Varda2ClientSubmit {
  input {
    String? disease_code
    String? lab_sample_id
    String? coverage_file
    String? sample_sheet
    String? variants_file
  }
  command <<<
    varda2-client submit \
      ~{if defined(disease_code) then ("--disease-code " +  '"' + disease_code + '"') else ""} \
      ~{if defined(lab_sample_id) then ("--lab-sample-id " +  '"' + lab_sample_id + '"') else ""} \
      ~{if defined(coverage_file) then ("--coverage-file " +  '"' + coverage_file + '"') else ""} \
      ~{if defined(sample_sheet) then ("--sample-sheet " +  '"' + sample_sheet + '"') else ""} \
      ~{if defined(variants_file) then ("--variants-file " +  '"' + variants_file + '"') else ""}
  >>>
  parameter_meta {
    disease_code: "Disease indication code"
    lab_sample_id: "Local sample id"
    coverage_file: "Varda coverage file"
    sample_sheet: "Sample sheet file: sample_id, gvcf, vcf, bam"
    variants_file: "Varda variants file"
  }
}