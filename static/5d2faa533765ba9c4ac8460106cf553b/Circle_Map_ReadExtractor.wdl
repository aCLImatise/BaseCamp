version 1.0

task CircleMapReadExtractor {
  input {
    Boolean? input_query_name
    Boolean? ouput_reads_indicating
    Boolean? quality
    Boolean? no_discordant
    Boolean? no_soft_clipped
    Boolean? no_hard_clipped
    Boolean? verbose
    String variants
  }
  command <<<
    Circle_Map ReadExtractor \
      ~{variants} \
      ~{if (input_query_name) then "-i" else ""} \
      ~{if (ouput_reads_indicating) then "--output" else ""} \
      ~{if (quality) then "--quality" else ""} \
      ~{if (no_discordant) then "--nodiscordant" else ""} \
      ~{if (no_soft_clipped) then "--nosoftclipped" else ""} \
      ~{if (no_hard_clipped) then "--nohardclipped" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_query_name: "Input: query name sorted bam file"
    ouput_reads_indicating: "Ouput: Reads indicating circular DNA structural"
    quality: "bwa-mem mapping quality cutoff. Default value 10"
    no_discordant: "Turn off discordant (R2F1 oriented) read extraction"
    no_soft_clipped: "Turn off soft-clipped read extraction"
    no_hard_clipped: "Turn off hard-clipped read extraction"
    verbose: "Verbose level, 1=error,2=warning, 3=message. Default=3"
    variants: "-dir , --directory    Working directory, default is the working directory"
  }
  output {
    File out_stdout = stdout()
  }
}