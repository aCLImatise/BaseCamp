version 1.0

task GetMitelman.py {
  input {
    String organismOrganism
    String urlUrl
    String outputOutput
  }
  command <<<
    get_mitelman.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(urlUrl) then ("--url " +  '"' + urlUrl + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}