version 1.0

task Fastdist {
  input {
    File? outfile
    String? input_format
    Boolean? memory_efficient
    String? output_format
    Int? distance_function
    Int? bootstraps
    Boolean? no_incl_orig
    Int? seed
    Boolean? no_ambiguities
    Boolean? no_am_big_resolve
    Boolean? no_trans_prob
    String? ambiguity_frequency_model
    Float? ts_tv_ratio
    Float? pyr_tv_ratio
    Boolean? no_ts_tv_ratio
    Float? fix_factor
    Int? number_of_runs
    Boolean? print_relaxng_input
    Boolean? print_relaxng_output
  }
  command <<<
    fastdist \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if (memory_efficient) then "--memory-efficient" else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(distance_function) then ("--distance-function " +  '"' + distance_function + '"') else ""} \
      ~{if defined(bootstraps) then ("--bootstraps " +  '"' + bootstraps + '"') else ""} \
      ~{if (no_incl_orig) then "--no-incl-orig" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (no_ambiguities) then "--no-ambiguities" else ""} \
      ~{if (no_am_big_resolve) then "--no-ambig-resolve" else ""} \
      ~{if (no_trans_prob) then "--no-transprob" else ""} \
      ~{if defined(ambiguity_frequency_model) then ("--ambiguity-frequency-model " +  '"' + ambiguity_frequency_model + '"') else ""} \
      ~{if defined(ts_tv_ratio) then ("--tstvratio " +  '"' + ts_tv_ratio + '"') else ""} \
      ~{if defined(pyr_tv_ratio) then ("--pyrtvratio " +  '"' + pyr_tv_ratio + '"') else ""} \
      ~{if (no_ts_tv_ratio) then "--no-tstvratio" else ""} \
      ~{if defined(fix_factor) then ("--fixfactor " +  '"' + fix_factor + '"') else ""} \
      ~{if defined(number_of_runs) then ("--number-of-runs " +  '"' + number_of_runs + '"') else ""} \
      ~{if (print_relaxng_input) then "--print-relaxng-input" else ""} \
      ~{if (print_relaxng_output) then "--print-relaxng-output" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outfile: "output filename. If not specifed, output is\\nwritten to stdout"
    input_format: "input format. xml means the Fastphylo sequence\\nXML format  (possible values=\\\"fasta\\\",\\n\\\"phylip\\\", \\\"xml\\\" default=`fasta')"
    memory_efficient: "memory efficient. Use less memory space and\\nfast implementation. Only used with fasta and\\nphylip format  (default=off)"
    output_format: "output format. xml means the Fastphylo distance\\nmatrix XML format  (possible\\nvalues=\\\"phylip\\\", \\\"xml\\\", \\\"binary\\\"\\ndefault=`xml')"
    distance_function: "Distance function  (possible values=\\\"JC\\\",\\n\\\"K2P\\\", \\\"TN93\\\", \\\"HAMMING\\\" default=`K2P')"
    bootstraps: "Bootstrap num times and create matrix for each\\n(default=`0')"
    no_incl_orig: "If the distance matrix from the original\\nsequences should not be included\\n(default=off)"
    seed: "Random seed. If not specified the current\\ntimestamp will be used"
    no_ambiguities: "Ignore ambiguities  (default=off)"
    no_am_big_resolve: "Specifies that ambigious symbols should not be\\nresolved by nearest neighbor  (default=off)"
    no_trans_prob: "Specifies that the transition probabilities\\nshould not be used in the ambiguity model\\n(default=off)"
    ambiguity_frequency_model: "Ambiguity frequency model  (possible\\nvalues=\\\"UNI\\\", \\\"BASE\\\" default=`UNI')"
    ts_tv_ratio: "Transition/transvertion ratio for purine\\ntransitions (for the TN model)\\n(default=`2.0')"
    pyr_tv_ratio: "Transition/transvertion ratio for  pyrimidines\\ntransitions (for the TN model)\\n(default=`2.0')"
    no_ts_tv_ratio: "If given fixed ts/tv ratios will not be used\\n(default=off)"
    fix_factor: "Float specifying what factor to use for\\nsaturated data. If not given -1 in the entry.\\n(default=`1')"
    number_of_runs: "nr of runs (datasets) in input. This option is\\nonly used if the input format is\\nphylip_multialignment.  (default=`1')"
    print_relaxng_input: "print the Relax NG schema for the XML input\\nformat (Fastphylo sequence XML format) and\\nthen exit  (default=off)"
    print_relaxng_output: "print the Relax NG schema for the XML output\\nformat (Fastphylo distance matrix XML format)\\nand then exit.  (default=off)"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}