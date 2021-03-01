version 1.0

task BiomTableids {
  input {
    File? input_fp
    Boolean? observations
  }
  command <<<
    biom table_ids \
      ~{if defined(input_fp) then ("--input-fp " +  '"' + input_fp + '"') else ""} \
      ~{if (observations) then "--observations" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fp: "The input BIOM table  [required]"
    observations: "Grab observation IDs"
  }
  output {
    File out_stdout = stdout()
  }
}