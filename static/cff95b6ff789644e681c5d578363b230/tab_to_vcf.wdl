version 1.0

task TabToVcf {
  input {
    String idId
    String refRef
    String? optionsOptions
  }
  command <<<
    tab-to-vcf \
      ~{optionsOptions} \
      ~{if defined(idId) then ("--id " +  '"' + idId + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""}
  >>>
}