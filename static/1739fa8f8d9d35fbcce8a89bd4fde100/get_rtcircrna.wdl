version 1.0

task GetRtcircrna.py {
  input {
    String organismOrganism
    String outputOutput
    String dataData
  }
  command <<<
    get_rtcircrna.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""}
  >>>
}