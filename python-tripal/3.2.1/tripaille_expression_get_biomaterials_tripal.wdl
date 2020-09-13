version 1.0

task TripailleExpressionGetBiomaterialsTripal {
  input {
    Int? biomaterial_id
  }
  command <<<
    tripaille expression get_biomaterials_tripal \
      ~{if defined(biomaterial_id) then ("--biomaterial_id " +  '"' + biomaterial_id + '"') else ""}
  >>>
  parameter_meta {
    biomaterial_id: "A biomaterial entity ID"
  }
  output {
    File out_stdout = stdout()
  }
}