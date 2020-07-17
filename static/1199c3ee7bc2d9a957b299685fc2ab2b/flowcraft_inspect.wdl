version 1.0

task FlowcraftInspect {
  input {
    String? specify_nextflow_file
    String? set_refresh_frequency
    String? mode
    String? url
    Boolean? pretty
  }
  command <<<
    flowcraft inspect \
      ~{if defined(specify_nextflow_file) then ("-i " +  '"' + specify_nextflow_file + '"') else ""} \
      ~{if defined(set_refresh_frequency) then ("-r " +  '"' + set_refresh_frequency + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{true="--pretty" false="" pretty}
  >>>
  parameter_meta {
    specify_nextflow_file: "Specify the nextflow trace file."
    set_refresh_frequency: "Set the refresh frequency for the continuous inspect functions"
    mode: "Specify the inspection run mode."
    url: "Specify the URL to where the data should be broadcast"
    pretty: "Pretty inspection mode that removes usual reporting processes."
  }
}