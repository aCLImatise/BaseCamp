version 1.0

task Fastprot {
  input {
    Boolean? detailed_help
    File? outfile
    String? input_format
    Boolean? memory_efficient
    String? output_format
    Int? bootstraps
    Boolean? no_incl_orig
    Int? seed
    String? distance_function
    File? model_file
    Boolean? remove_indels
    Boolean? maximum_likelihood
    Boolean? sd
    Boolean? pfam
    Int? speed
    Boolean? print_relaxng_input
    Boolean? print_relaxng_output
  }
  command <<<
    fastprot \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if (memory_efficient) then "--memory-efficient" else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(bootstraps) then ("--bootstraps " +  '"' + bootstraps + '"') else ""} \
      ~{if (no_incl_orig) then "--no-incl-orig" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(distance_function) then ("--distance-function " +  '"' + distance_function + '"') else ""} \
      ~{if defined(model_file) then ("--model-file " +  '"' + model_file + '"') else ""} \
      ~{if (remove_indels) then "--remove-indels" else ""} \
      ~{if (maximum_likelihood) then "--maximum-likelihood" else ""} \
      ~{if (sd) then "--sd" else ""} \
      ~{if (pfam) then "--pfam" else ""} \
      ~{if defined(speed) then ("--speed " +  '"' + speed + '"') else ""} \
      ~{if (print_relaxng_input) then "--print-relaxng-input" else ""} \
      ~{if (print_relaxng_output) then "--print-relaxng-output" else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    outfile: "output filename. If not specified, output is\\nwritten to stdout"
    input_format: "input format. xml means the Fastphylo sequence\\nXML format  (possible values=\\\"fasta\\\",\\n\\\"phylip\\\", \\\"xml\\\" default=`fasta')"
    memory_efficient: "memory efficient. Use less memory space and\\nfast implementation. Only used with fasta and\\nphylip format  (default=off)"
    output_format: "output format. xml means the Fastphylo distance\\nmatrix XML format  (possible\\nvalues=\\\"phylip\\\", \\\"xml\\\", \\\"binary\\\"\\ndefault=`xml')"
    bootstraps: "Bootstrap num times and create matrix for each\\n(default=`0')"
    no_incl_orig: "If the distance matrix from the original\\nsequences should NOT be included - for\\nbootstrapping  (default=off)"
    seed: "Random seed. If not specified the current\\ntimestamp will be used"
    distance_function: "Distance function  (possible values=\\\"ID\\\",\\n\\\"JC\\\", \\\"JCK\\\", \\\"JCSS\\\", \\\"WAG\\\", \\\"JTT\\\",\\n\\\"DAY\\\", \\\"ARVE\\\", \\\"MVR\\\", \\\"LG\\\"\\ndefault=`WAG')"
    model_file: "Read matrix and equilibrium distribution from\\nfile, when used --distance-function is\\ndisregarded"
    remove_indels: "Remove gap columns. A gap is denoted by '-'.\\n(default=off)"
    maximum_likelihood: "Compute a Maximum Likelihood estimate instead.\\nCan not be used with --distance-function=ID,\\nJC, JCK or JCSS or --sd  (default=off)"
    sd: "Not yet implemented! Output a matrix with\\nstandard deviations after the distance\\nmatrix. Can not be used with\\n--distance-function=ID, JC, JCK or JCSS or\\n--maximum-likelihood  (default=off)"
    pfam: "use a normal distribution as distance prior,\\nestimated from Pfam 7.2  (default=off)"
    speed: "'Speed'. High speed results in low precision,\\nonly affects ED calculations. Default is 5.\\nValid range is [1,10].  (possible\\nvalues=\\\"1\\\", \\\"2\\\", \\\"3\\\", \\\"4\\\", \\\"5\\\",\\n\\\"6\\\", \\\"7\\\", \\\"8\\\" default=`4')"
    print_relaxng_input: "print the Relax NG schema for the XML input\\nformat (Fastphylo protein sequence XML\\nformat) and then exit  (default=off)"
    print_relaxng_output: "print the Relax NG schema for the XML output\\nformat (Fastphylo distance matrix XML format)\\nand then exit.  (default=off)"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}