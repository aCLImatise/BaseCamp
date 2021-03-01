version 1.0

task PhenixpyPrepareReference {
  input {
    File? reference
    Int? mapper
    String? variant
  }
  command <<<
    phenix_py prepare_reference \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(mapper) then ("--mapper " +  '"' + mapper + '"') else ""} \
      ~{if defined(variant) then ("--variant " +  '"' + variant + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference: "Path to reference file to prepare."
    mapper: "Available mappers: ['bwa', 'bowtie2']"
    variant: "Available variants: ['mpileup', 'gatk']"
  }
  output {
    File out_stdout = stdout()
  }
}