version 1.0

task BioconvertCsv2tsv {
  input {
    Boolean? force
    String? verbosity
    Boolean? raise_exception
    Boolean? batch
    Boolean? benchmark
    Int? benchmark_n
    Array[String] benchmark_methods
    Boolean? allow_indirect_conversion
    String? extra_arguments
    Boolean? method_use_do
    Boolean? show_methods
    File? in_sep
    File? out_sep
    File? line_terminator
    String input_file
    String output_file
  }
  command <<<
    bioconvert csv2tsv \
      ~{input_file} \
      ~{output_file} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (raise_exception) then "--raise-exception" else ""} \
      ~{if (batch) then "--batch" else ""} \
      ~{if (benchmark) then "--benchmark" else ""} \
      ~{if defined(benchmark_n) then ("--benchmark-N " +  '"' + benchmark_n + '"') else ""} \
      ~{if defined(benchmark_methods) then ("--benchmark-methods " +  '"' + benchmark_methods + '"') else ""} \
      ~{if (allow_indirect_conversion) then "--allow-indirect-conversion" else ""} \
      ~{if defined(extra_arguments) then ("--extra-arguments " +  '"' + extra_arguments + '"') else ""} \
      ~{if (method_use_do) then "-m" else ""} \
      ~{if (show_methods) then "--show-methods" else ""} \
      ~{if defined(in_sep) then ("--in-sep " +  '"' + in_sep + '"') else ""} \
      ~{if defined(out_sep) then ("--out-sep " +  '"' + out_sep + '"') else ""} \
      ~{if defined(line_terminator) then ("--line-terminator " +  '"' + line_terminator + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force: "if outfile exists, it is overwritten with this option\\n(default: False)"
    verbosity: "Set the outpout verbosity. (default: ERROR)"
    raise_exception: "Let exception ending the execution be raised and\\ndisplayed (default: False)"
    batch: "Allow conversion of a set of files using wildcards.\\nYou must use quotes to escape the wildcards. For\\ninstance: --batch 'test*fastq' (default: False)"
    benchmark: "Running all available methods (default: False)"
    benchmark_n: "Number of trials for each methods (default: 5)"
    benchmark_methods: "Methods to include (default: all)"
    allow_indirect_conversion: "Allow to chain converter when direct conversion is\\nabsent (default: False)"
    extra_arguments: "Any arguments accepted by the method's tool (default:\\n)"
    method_use_do: "[{pandas,python,python_v2}], --method [{pandas,python,python_v2}]\\nThe method to use to do the conversion. (default:\\npython)"
    show_methods: "A converter may have several methods (default: False)"
    in_sep: "The separator used in the input file (default: ,)"
    out_sep: "The separator used in the output file (default: )"
    line_terminator: "The line terminator used in the output file (default:\\n)"
    input_file: "The path to the file to convert. (default: None)"
    output_file: "The path where the result will be stored. (default:\\nNone)"
  }
  output {
    File out_stdout = stdout()
    File out_out_sep = "${in_out_sep}"
    File out_line_terminator = "${in_line_terminator}"
  }
}