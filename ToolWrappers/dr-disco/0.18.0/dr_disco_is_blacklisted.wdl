version 1.0

task DrdiscoIsblacklisted {
  input {
    String? blacklist_regions
    String? blacklist_junctions
  }
  command <<<
    dr_disco is_blacklisted \
      ~{if defined(blacklist_regions) then ("--blacklist-regions " +  '"' + blacklist_regions + '"') else ""} \
      ~{if defined(blacklist_junctions) then ("--blacklist-junctions " +  '"' + blacklist_junctions + '"') else ""}
  >>>
  parameter_meta {
    blacklist_regions: ""
    blacklist_junctions: "Blacklist these region-to-region junctions\\n(custom format, see files in ./share/)"
  }
  output {
    File out_stdout = stdout()
  }
}