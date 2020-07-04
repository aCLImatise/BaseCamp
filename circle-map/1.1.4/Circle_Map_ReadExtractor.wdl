version 1.0

task CircleMapReadExtractor {
  input {
    Boolean? input_query_name
    Boolean? _output_reads
    Boolean? dir
    Boolean? _quality_bwamem
    Boolean? no_discordant
    Boolean? no_soft_clipped
    Boolean? no_hard_clipped
    Boolean? _verbose_level
  }
  command <<<
    Circle-Map ReadExtractor \
      ~{true="-i" false="" input_query_name} \
      ~{true="-o" false="" _output_reads} \
      ~{true="-dir" false="" dir} \
      ~{true="-q" false="" _quality_bwamem} \
      ~{true="--nodiscordant" false="" no_discordant} \
      ~{true="--nosoftclipped" false="" no_soft_clipped} \
      ~{true="--nohardclipped" false="" no_hard_clipped} \
      ~{true="-v" false="" _verbose_level}
  >>>
  parameter_meta {
    input_query_name: "Input: query name sorted bam file"
    _output_reads: ", --output         Ouput: Reads indicating circular DNA structural variants"
    dir: ", --directory    Working directory, default is the working directory"
    _quality_bwamem: ", --quality        bwa-mem mapping quality cutoff. Default value 10"
    no_discordant: "Turn off discordant (R2F1 oriented) read extraction"
    no_soft_clipped: "Turn off soft-clipped read extraction"
    no_hard_clipped: "Turn off hard-clipped read extraction"
    _verbose_level: ", --verbose        Verbose level, 1=error,2=warning, 3=message. Default=3"
  }
}