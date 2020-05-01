version 1.0

task GetGtf.py {
  input {
    String organismOrganism
    String outputOutput
    String serverServer
    String serverServerPath
    Boolean filterFilterChrom
  }
  command <<<
    get_gtf.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(serverServer) then ("--server " +  '"' + serverServer + '"') else ""} \
      ~{if defined(serverServerPath) then ("--server-path " +  '"' + serverServerPath + '"') else ""} \
      ~{true="--filter-chrom" false="" filterFilterChrom}
  >>>
}