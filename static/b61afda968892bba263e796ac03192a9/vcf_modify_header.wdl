version 1.0

task VcfModifyHeader.py {
  input {
    String idId
    String categoryCategory
    String typeType
    String numberNumber
    String descriptionDescription
    String? vcfVcf
  }
  command <<<
    vcf_modify_header.py \
      ~{vcfVcf} \
      ~{if defined(idId) then ("--id " +  '"' + idId + '"') else ""} \
      ~{if defined(categoryCategory) then ("--category " +  '"' + categoryCategory + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""}
  >>>
}