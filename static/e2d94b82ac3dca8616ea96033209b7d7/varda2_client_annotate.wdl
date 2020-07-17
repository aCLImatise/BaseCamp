version 1.0

task Varda2ClientAnnotate {
  input {
    String? sample_sheet
    String? variants_file
    String? lab_sample_id
  }
  command <<<
    varda2-client annotate \
      ~{if defined(sample_sheet) then ("--sample-sheet " +  '"' + sample_sheet + '"') else ""} \
      ~{if defined(variants_file) then ("--variants-file " +  '"' + variants_file + '"') else ""} \
      ~{if defined(lab_sample_id) then ("--lab-sample-id " +  '"' + lab_sample_id + '"') else ""}
  >>>
  parameter_meta {
    sample_sheet: "Sample sheet file: sample_id, gvcf, vcf, bam"
    variants_file: "Varda variants file"
    lab_sample_id: "Local sample id"
  }
}