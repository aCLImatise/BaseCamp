version 1.0

task Schemasaladdoc {
  input {
    String? only
    String? redirect
    String? brand
    String? brand_link
    String? prim_type
  }
  command <<<
    schema_salad_doc \
      ~{if defined(only) then ("--only " +  '"' + only + '"') else ""} \
      ~{if defined(redirect) then ("--redirect " +  '"' + redirect + '"') else ""} \
      ~{if defined(brand) then ("--brand " +  '"' + brand + '"') else ""} \
      ~{if defined(brand_link) then ("--brandlink " +  '"' + brand_link + '"') else ""} \
      ~{if defined(prim_type) then ("--primtype " +  '"' + prim_type + '"') else ""}
  >>>
  parameter_meta {
    only: ""
    redirect: ""
    brand: ""
    brand_link: ""
    prim_type: ""
  }
  output {
    File out_stdout = stdout()
  }
}