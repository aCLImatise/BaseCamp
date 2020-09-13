version 1.0

task Tpocket {
  input {
    File? write_global_performance
    File? write_pocket_detailed
    Float? distance_criteria_ways
  }
  command <<<
    tpocket \
      ~{if defined(write_global_performance) then ("-g " +  '"' + write_global_performance + '"') else ""} \
      ~{if defined(write_pocket_detailed) then ("-o " +  '"' + write_pocket_detailed + '"') else ""} \
      ~{if defined(distance_criteria_ways) then ("-d " +  '"' + distance_criteria_ways + '"') else ""}
  >>>
  parameter_meta {
    write_global_performance: ": Write global performance to this file\\nDefault name: ./stats_g.txt.           (./stats_g.txt)"
    write_pocket_detailed: ": Write pocket detailed statistics to .\\nthis file Default name: ./stats_p.txt  (./stats_p.txt)"
    distance_criteria_ways: ": Distance criteria for the 2 ways to\\ndefine the actual pocket               (4.0)"
  }
  output {
    File out_stdout = stdout()
  }
}