version 1.0

task TripailleExpressionGetBiomaterialsTripal {
  input {
    Int biomaterialBiomaterialId
  }
  command <<<
    tripaille expression get_biomaterials_tripal \
      ~{if defined(biomaterialBiomaterialId) then ("--biomaterial_id " +  '"' + biomaterialBiomaterialId + '"') else ""}
  >>>
}