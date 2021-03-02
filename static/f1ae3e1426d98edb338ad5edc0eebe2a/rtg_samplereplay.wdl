version 1.0

task RtgSamplereplay {
  input {
    File? input_vcf_containing
    String? name_output_sdf
    String? reference
    String? sample
  }
  command <<<
    rtg samplereplay \
      ~{if defined(input_vcf_containing) then ("--input " +  '"' + input_vcf_containing + '"') else ""} \
      ~{if defined(name_output_sdf) then ("--output " +  '"' + name_output_sdf + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_vcf_containing: "input VCF containing the sample genotype"
    name_output_sdf: "name for output SDF"
    reference: "SDF containing the reference genome"
    sample: "name of the sample to select from the VCF"
  }
  output {
    File out_stdout = stdout()
  }
}