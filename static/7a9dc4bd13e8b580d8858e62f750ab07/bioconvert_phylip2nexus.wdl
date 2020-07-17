version 1.0

task BioconvertPhylip2nexus {
  input {
    Boolean? force
    String? verbosity
    Boolean? raise_exception
    Boolean? batch
    Boolean? benchmark
    String? benchmark_n
    Array[String] benchmark_methods
    Boolean? allow_indirect_conversion
    String? extra_arguments
    Boolean? method_use_conversion
    Boolean? show_methods
    String input_file
    String output_file
  }
  command <<<
    bioconvert phylip2nexus \
      ~{input_file} \
      ~{output_file} \
      ~{true="--force" false="" force} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{true="--raise-exception" false="" raise_exception} \
      ~{true="--batch" false="" batch} \
      ~{true="--benchmark" false="" benchmark} \
      ~{if defined(benchmark_n) then ("--benchmark-N " +  '"' + benchmark_n + '"') else ""} \
      ~{if defined(benchmark_methods) then ("--benchmark-methods " +  '"' + benchmark_methods + '"') else ""} \
      ~{true="--allow-indirect-conversion" false="" allow_indirect_conversion} \
      ~{if defined(extra_arguments) then ("--extra-arguments " +  '"' + extra_arguments + '"') else ""} \
      ~{true="-m" false="" method_use_conversion} \
      ~{true="--show-methods" false="" show_methods}
  >>>
  parameter_meta {
    force: "if outfile exists, it is overwritten with this option (default: False)"
    verbosity: "Set the outpout verbosity. (default: ERROR)"
    raise_exception: "Let exception ending the execution be raised and displayed (default: False)"
    batch: "Allow conversion of a set of files using wildcards. You must use quotes to escape the wildcards. For instance: --batch 'test*fastq' (default: False)"
    benchmark: "Running all available methods (default: False)"
    benchmark_n: "Number of trials for each methods (default: 5)"
    benchmark_methods: "Methods to include (default: all)"
    allow_indirect_conversion: "Allow to chain converter when direct conversion is absent (default: False)"
    extra_arguments: "Any arguments accepted by the method's tool (default: )"
    method_use_conversion: "[{goalign}], --method [{goalign}] The method to use to do the conversion. (default: goalign)"
    show_methods: "A converter may have several methods (default: False)"
    input_file: "The path to the file to convert. (default: None)"
    output_file: "The path where the result will be stored. (default: None)"
  }
}