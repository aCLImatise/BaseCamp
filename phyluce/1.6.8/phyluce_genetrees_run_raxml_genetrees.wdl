version 1.0

task PhyluceGenetreesRunRaxmlGenetrees {
  input {
    Directory? input_directory_containing
    String? out_group
    Int? threads
    Int? tree_searches
    Int? cores
    Boolean? quiet
    String? verbosity
    File? log_path
    Boolean? var_output
    String format
  }
  command <<<
    phyluce_genetrees_run_raxml_genetrees \
      ~{format} \
      ~{if defined(input_directory_containing) then ("--input " +  '"' + input_directory_containing + '"') else ""} \
      ~{if defined(out_group) then ("--outgroup " +  '"' + out_group + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tree_searches) then ("--tree-searches " +  '"' + tree_searches + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if (var_output) then "--output" else ""}
  >>>
  parameter_meta {
    input_directory_containing: "The input directory containing alignments in phylip"
    out_group: "The outgroup to use"
    threads: "The number of RAxML threads to run (best to determine\\nempirically)"
    tree_searches: "The number of tree searches to run."
    cores: "The number of concurrent RAxML jobs to run"
    quiet: "Suppress the CPU usage question"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    var_output: ""
    format: "--output OUTPUT       The output directory to hold alignments"
  }
  output {
    File out_stdout = stdout()
  }
}