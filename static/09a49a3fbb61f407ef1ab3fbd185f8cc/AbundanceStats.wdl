version 1.0

task AbundanceStats {
  input {
    Boolean? jaccard
    File? lower_cut_off
    Directory? result_dir
    File? r_location
    Boolean? sorensen
    Boolean? otu_table
    File file
  }
  command <<<
    AbundanceStats \
      ~{file} \
      ~{if (jaccard) then "--jaccard" else ""} \
      ~{if defined(lower_cut_off) then ("--lower-cutoff " +  '"' + lower_cut_off + '"') else ""} \
      ~{if defined(result_dir) then ("--result-dir " +  '"' + result_dir + '"') else ""} \
      ~{if defined(r_location) then ("--R-location " +  '"' + r_location + '"') else ""} \
      ~{if (sorensen) then "--sorensen" else ""} \
      ~{if (otu_table) then "--otu-table" else ""}
  >>>
  parameter_meta {
    jaccard: "Compute jaccard abundance stats"
    lower_cut_off: "Lowest cutoff in the cluster file to compute\\nstats for"
    result_dir: "Directory to put the result files in\\n(default=.)"
    r_location: "Triggers the R plotter subsystem, provide the\\npath to the R command"
    sorensen: "Compute sorensen abundance stats"
    otu_table: "input file is an otu table, not rdp cluster"
    file: "-u,--upper-cutoff <arg>   Highest cutoff in the cluster file to compute"
  }
  output {
    File out_stdout = stdout()
  }
}