version 1.0

task BigWigCluster {
  input {
    String? threads
    Boolean? tmpdir
    String input_dot_list
    String chrom_dot_sizes
    String output_dot_json
    String output_dot_tab
  }
  command <<<
    bigWigCluster \
      ~{input_dot_list} \
      ~{chrom_dot_sizes} \
      ~{output_dot_json} \
      ~{output_dot_tab} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{true="-tmpDir" false="" tmpdir}
  >>>
  parameter_meta {
    threads: "- number of threads to use, default 10"
    tmpdir: "=/tmp/path - place to put temp files, default current dir"
    input_dot_list: ""
    chrom_dot_sizes: ""
    output_dot_json: ""
    output_dot_tab: ""
  }
}