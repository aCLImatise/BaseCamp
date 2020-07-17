version 1.0

task GenotypeSummary {
  input {
    String? type
    String? target
    String genotypes_umm_mary
  }
  command <<<
    genotypeSummary \
      ~{genotypes_umm_mary} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""}
  >>>
  parameter_meta {
    type: ""
    target: ""
    genotypes_umm_mary: ""
  }
}