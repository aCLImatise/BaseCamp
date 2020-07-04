version 1.0

task PhyluceGenetreesRunRaxmlGenetrees {
  input {
    String? input_directory_containing
    String? output_directory_hold
    String? out_group
    String? threads
    String? tree_searches
    String? cores
    Boolean? quiet
    String? verbosity
    String? log_path
  }
  command <<<
    phyluce_genetrees_run_raxml_genetrees \
      ~{if defined(input_directory_containing) then ("--input " +  '"' + input_directory_containing + '"') else ""} \
      ~{if defined(output_directory_hold) then ("--output " +  '"' + output_directory_hold + '"') else ""} \
      ~{if defined(out_group) then ("--outgroup " +  '"' + out_group + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tree_searches) then ("--tree-searches " +  '"' + tree_searches + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    input_directory_containing: "The input directory containing alignments in phylip format"
    output_directory_hold: "The output directory to hold alignments"
    out_group: "The outgroup to use"
    threads: "The number of RAxML threads to run (best to determine empirically)"
    tree_searches: "The number of tree searches to run."
    cores: "The number of concurrent RAxML jobs to run"
    quiet: "Suppress the CPU usage question"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
  }
}