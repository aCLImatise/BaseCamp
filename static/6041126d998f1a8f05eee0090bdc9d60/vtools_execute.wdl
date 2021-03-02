version 1.0

task VtoolsExecute {
  input {
    Int? jobs
    String? delimiter
    String? verbosity
    String spec_file
    String pipelines
  }
  command <<<
    vtools execute \
      ~{spec_file} \
      ~{pipelines} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    jobs: "Execute the pipeline in parallel model if a number\\nother than 1 is specified. In this mode, the\\nRunCommand action will create a shell script and\\nsubmit the job using a command specified by option\\n``submitter``, if this parameter is defined."
    delimiter: "Delimiter used to output results of a SQL query."
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1).\\n"
    spec_file: "Name of a pipeline configuration file, which can be a\\npath to a .pipeline file (with or without extension)\\nor one of the online pipelines listed by command\\n\\\"vtools show pipelines\\\". For backward compatibility,\\nif no input and output files are specified (options\\n--input and --output), values of this option is\\ntreated as a SQL query that will be executed against\\nthe project database, with project genotype database\\nattached as \\\"genotype\\\" and annotation databases\\nattached by their names."
    pipelines: "Name of one or more pipelines defined in SPECFILE,\\nwhich can be ignored if the SPECFILE only defines one\\npipeline. One or more steps can be specified in the\\nform of 'pipeline:5' (step_5 only), 'pipeline:-5' (up\\nto step 5), 'pipeline:5-' (from step 5),\\n'pipeline:2,5' (step 2 and 5), 'pipeline:2-5' (step 2\\nto 5). This essentially adds an option \\\"skip\\\" to the\\nunselected pipeline steps and it is up to the user to\\nensure that the pipeline is executable with only a\\nsubset of steps. Please use command \\\"vtools show\\npipeline SPECFILE\\\" for details of available pipelines\\nin SPECFILE, including pipeline-specific parameters\\nthat could be used to change the default behavior of\\nthe pipelines."
  }
  output {
    File out_stdout = stdout()
  }
}