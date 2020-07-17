version 1.0

task BiomTableIds {
  input {
    File? input_fp
    Boolean? observations
  }
  command <<<
    biom table-ids \
      ~{if defined(input_fp) then ("--input-fp " +  '"' + input_fp + '"') else ""} \
      ~{true="--observations" false="" observations}
  >>>
  parameter_meta {
    input_fp: "The input BIOM table  [required]"
    observations: "Grab observation IDs"
  }
}