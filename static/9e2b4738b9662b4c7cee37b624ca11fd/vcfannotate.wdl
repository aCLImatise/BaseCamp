version 1.0

task Vcfannotate {
  input {
    Boolean? bed
    Boolean? key
    Boolean? default
    String? vcf_file
  }
  command <<<
    vcfannotate \
      ~{vcf_file} \
      ~{true="--bed" false="" bed} \
      ~{true="--key" false="" key} \
      ~{true="--default" false="" default}
  >>>
  parameter_meta {
    bed: "use annotations provided by this BED file"
    key: "use this INFO field key for the annotations"
    default: "use this INFO field key for records without annotations"
    vcf_file: ""
  }
}