version 1.0

task Vcfannotate {
  input {
    Boolean? bed
    Boolean? key
    Boolean? default
    File? vcf_file
  }
  command <<<
    vcfannotate \
      ~{vcf_file} \
      ~{if (bed) then "--bed" else ""} \
      ~{if (key) then "--key" else ""} \
      ~{if (default) then "--default" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  parameter_meta {
    bed: "use annotations provided by this BED file"
    key: "use this INFO field key for the annotations"
    default: "use this INFO field key for records without annotations"
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}