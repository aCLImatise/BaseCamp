version 1.0

task TabToVcf {
  input {
    String? id
    String? ref
  }
  command <<<
    tab-to-vcf \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  parameter_meta {
    id: "The column ID."
    ref: "The reference sequence (optional)."
  }
}