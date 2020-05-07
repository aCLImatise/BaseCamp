version 1.0

task GenerateBannedSeq.py {
  input {
    String organismOrganism
    String outputOutput
  }
  command <<<
    generate_banned_seq.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}