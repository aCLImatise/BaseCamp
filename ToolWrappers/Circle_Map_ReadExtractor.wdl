version 1.0

task CircleMapReadExtractor {
  input {
    Boolean? input_query_name
    Boolean? _output_ouput
    Boolean? _quality_value
    Boolean? no_discordant
    Boolean? no_soft_clipped
    Boolean? no_hard_clipped
    Boolean? _verbose_verbose
    String variants
  }
  command <<<
    Circle_Map ReadExtractor \
      ~{variants} \
      ~{if (input_query_name) then "-i" else ""} \
      ~{if (_output_ouput) then "-o" else ""} \
      ~{if (_quality_value) then "-q" else ""} \
      ~{if (no_discordant) then "--nodiscordant" else ""} \
      ~{if (no_soft_clipped) then "--nosoftclipped" else ""} \
      ~{if (no_hard_clipped) then "--nohardclipped" else ""} \
      ~{if (_verbose_verbose) then "-v" else ""}
  >>>
  parameter_meta {
    input_query_name: "Input: query name sorted bam file"
    _output_ouput: ", --output         Ouput: Reads indicating circular DNA structural"
    _quality_value: ", --quality        bwa-mem mapping quality cutoff. Default value 10"
    no_discordant: "Turn off discordant (R2F1 oriented) read extraction"
    no_soft_clipped: "Turn off soft-clipped read extraction"
    no_hard_clipped: "Turn off hard-clipped read extraction"
    _verbose_verbose: ", --verbose        Verbose level, 1=error,2=warning, 3=message. Default=3"
    variants: "-dir , --directory    Working directory, default is the working directory"
  }
  output {
    File out_stdout = stdout()
  }
}