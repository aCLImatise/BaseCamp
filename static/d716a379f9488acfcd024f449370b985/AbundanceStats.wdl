version 1.0

task AbundanceStats {
  input {
    Boolean? jaccard
    String? lower_cut_off
    String? result_dir
    String? r_location
    Boolean? sorensen
    Boolean? otu_table
    String? upper_cut_off
    String main
    String cluster_file
  }
  command <<<
    AbundanceStats \
      ~{main} \
      ~{cluster_file} \
      ~{true="--jaccard" false="" jaccard} \
      ~{if defined(lower_cut_off) then ("--lower-cutoff " +  '"' + lower_cut_off + '"') else ""} \
      ~{if defined(result_dir) then ("--result-dir " +  '"' + result_dir + '"') else ""} \
      ~{if defined(r_location) then ("--R-location " +  '"' + r_location + '"') else ""} \
      ~{true="--sorensen" false="" sorensen} \
      ~{true="--otu-table" false="" otu_table} \
      ~{if defined(upper_cut_off) then ("--upper-cutoff " +  '"' + upper_cut_off + '"') else ""}
  >>>
  parameter_meta {
    jaccard: "Compute jaccard abundance stats"
    lower_cut_off: "Lowest cutoff in the cluster file to compute stats for"
    result_dir: "Directory to put the result files in (default=.)"
    r_location: "Triggers the R plotter subsystem, provide the path to the R command"
    sorensen: "Compute sorensen abundance stats"
    otu_table: "input file is an otu table, not rdp cluster file"
    upper_cut_off: "Highest cutoff in the cluster file to compute stats for"
    main: ""
    cluster_file: ""
  }
}