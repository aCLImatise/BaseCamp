version 1.0

task Fnj {
  input {
    File? outfile
    String? input_format
    String? output_format
    Boolean? print_counts
    Int? analyze_run_number
    String? method
    Int? dm_per_run
    Int? number_of_runs
    Int? bootstraps
    Boolean? print_relaxng_input
    Boolean? print_relaxng_output
    String phylip
  }
  command <<<
    fnj \
      ~{phylip} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if (print_counts) then "--print-counts" else ""} \
      ~{if defined(analyze_run_number) then ("--analyze-run-number " +  '"' + analyze_run_number + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(dm_per_run) then ("--dm-per-run " +  '"' + dm_per_run + '"') else ""} \
      ~{if defined(number_of_runs) then ("--number-of-runs " +  '"' + number_of_runs + '"') else ""} \
      ~{if defined(bootstraps) then ("--bootstraps " +  '"' + bootstraps + '"') else ""} \
      ~{if (print_relaxng_input) then "--print-relaxng-input" else ""} \
      ~{if (print_relaxng_output) then "--print-relaxng-output" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outfile: "output filename. If not specifed, output is\\nwritten to stdout"
    input_format: "input format. 'xml' means the 'Fastphylo\\ndistance matrix XML format'  (possible\\nvalues=\\\"phylip\\\", \\\"xml\\\", \\\"binary\\\"\\ndefault=`xml')"
    output_format: "output format. 'xml' means the 'Fastphylo tree\\ncount XML format'  (possible\\nvalues=\\\"newick\\\", \\\"xml\\\" default=`xml')"
    print_counts: "print the tree count before each the newick\\ntree. This flag has no effect on the XML\\noutput format.  (default=off)"
    analyze_run_number: "Determines which dataset should be analyzed\\nwith 1 being the first dataset. By default\\nall are analyzed"
    method: "reconstruction method to apply  (possible\\nvalues=\\\"NJ\\\", \\\"FNJ\\\", \\\"BIONJ\\\"\\ndefault=`FNJ')"
    dm_per_run: "nr of Distance matrices per run. Is only used\\nif the input format is phylip  (default=`1')"
    number_of_runs: "nr of runs. Is only used if the input format is"
    bootstraps: "number of boot straps  (default=`0')"
    print_relaxng_input: "print the Relax NG schema for the XML input\\nformat (Fastphylo distance matrix XML format)\\nand then exit  (default=off)"
    print_relaxng_output: "print the Relax NG schema for the XML output\\nformat (Fastphylo tree count XML format) and\\nthen exit.  (default=off)"
    phylip: "(default=`1')"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}