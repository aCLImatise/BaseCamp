version 1.0

task RNAblueprint {
  input {
    Boolean? _be_verbose
    Boolean? be_verbose_debugging
    Boolean? arg_input_file
    File? arg_output_file
    Boolean? arg_write_file
    Boolean? sample_stochastic_sampling
    Boolean? s
    Boolean? n
  }
  command <<<
    RNAblueprint \
      ~{if (_be_verbose) then "-v" else ""} \
      ~{if (be_verbose_debugging) then "-d" else ""} \
      ~{if (arg_input_file) then "-i" else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if (arg_write_file) then "-g" else ""} \
      ~{if (sample_stochastic_sampling) then "-m" else ""} \
      ~{if (s) then "-s" else ""} \
      ~{if (n) then "-n" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _be_verbose: "[ --verbose ]             be verbose"
    be_verbose_debugging: "[ --debug ]               be verbose for debugging"
    arg_input_file: "[ --in ] arg              input file which contains the structures,\\nsequence constraints and the start sequence\\n[string]\\nstructures: secondary structures in dot-bracket\\nnotation. one structure per input\\nline\\nsequence constraints: Permanent sequence\\nconstraints in IUPAC\\nnotation [ACGTUWSMKRYBDHVN\\n] (optional)\\nstart sequence:  A initial RNA sequence to start\\nthe sampling from [ACGU]\\n(optional)"
    arg_output_file: "[ --out ] arg             output file for writing the sequences (default:\\nstdout) [string]"
    arg_write_file: "[ --graphml ] arg         write a GraphML file representing the dependency\\ngraph to the given filename (optional) [string]"
    sample_stochastic_sampling: "[ --mode ] arg (=sample)  mode for sequence generation [string]:\\nsample: stochastic sampling of all positions\\n(default)\\nsample-clocal: Only sample one connected\\ncomponent at a time starting from\\nan initial sequence\\nsample-plocal: Sample only single paths starting\\nfrom an initial sequence\\nclocal-neighbors: Only find neighboring\\nsequences to the initial start\\nsequence by sampling one\\nconnected component only\\nplocal-neighbors: Only find neighboring\\nsequences to the initial start\\nsequence by sampling one path\\nonly"
    s: "[ --seed ] arg            random number generator seed [unsigned long]"
    n: "[ --num ] arg (=10)       number of designs (default: 10) [unsigned int]"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
  }
}