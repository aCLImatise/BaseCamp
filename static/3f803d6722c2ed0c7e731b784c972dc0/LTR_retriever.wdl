version 1.0

task LTRRetriever {
  input {
    String? genome
    String? in_harvest
  }
  command <<<
    LTR_retriever \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{if defined(in_harvest) then ("-inharvest " +  '"' + in_harvest + '"') else ""}
  >>>
  parameter_meta {
    genome: ""
    in_harvest: ""
  }
}