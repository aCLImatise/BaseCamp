version 1.0

task MakeBipartiteNetwork.py {
  input {
    String biomBiomFp
    String mapMapFp
    String outputOutputDir
    String observationObservationMdHeaderKey
    String mdMdFields
  }
  command <<<
    make_bipartite_network.py \
      ~{if defined(biomBiomFp) then ("--biom_fp " +  '"' + biomBiomFp + '"') else ""} \
      ~{if defined(mapMapFp) then ("--map_fp " +  '"' + mapMapFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(observationObservationMdHeaderKey) then ("--observation_md_header_key " +  '"' + observationObservationMdHeaderKey + '"') else ""} \
      ~{if defined(mdMdFields) then ("--md_fields " +  '"' + mdMdFields + '"') else ""}
  >>>
}