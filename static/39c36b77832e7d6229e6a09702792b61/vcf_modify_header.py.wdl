version 1.0

task VcfModifyHeaderpy {
  input {
    String? id
    String? category
    Float? type
    Int? number
    String? description
  }
  command <<<
    vcf_modify_header_py \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if defined(category) then ("--category " +  '"' + category + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""}
  >>>
  parameter_meta {
    id: "field id"
    category: "INFO, FORMAT, FILTER"
    type: "Number, String, Float, Integer"
    number: "integer, A, R, G, or ."
    description: "description\\n"
  }
  output {
    File out_stdout = stdout()
  }
}