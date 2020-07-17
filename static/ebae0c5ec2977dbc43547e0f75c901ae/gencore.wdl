version 1.0

task Gencore {
  input {
    Boolean? high_qual
    Boolean? moderate_qual
    Boolean? low_qual
    Boolean? coverage_sampling
    Boolean? json
    Boolean? debug
    Boolean? quit_after_contig
    String? ref
  }
  command <<<
    gencore \
      ~{true="--high_qual" false="" high_qual} \
      ~{true="--moderate_qual" false="" moderate_qual} \
      ~{true="--low_qual" false="" low_qual} \
      ~{true="--coverage_sampling" false="" coverage_sampling} \
      ~{true="--json" false="" json} \
      ~{true="--debug" false="" debug} \
      ~{true="--quit_after_contig" false="" quit_after_contig} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  parameter_meta {
    high_qual: "the threshold for a quality score to be considered as high quality. Default 30 means Q30. (int [=30])"
    moderate_qual: "the threshold for a quality score to be considered as moderate quality. Default 20 means Q20. (int [=20])"
    low_qual: "the threshold for a quality score to be considered as low quality. Default 15 means Q15. (int [=15])"
    coverage_sampling: "the sampling rate for genome scale coverage statistics. Default 10000 means 1/10000. (int [=10000])"
    json: "the json format report file name (string [=gencore.json])"
    debug: "output some debug information to STDERR."
    quit_after_contig: "stop when <quit_after_contig> contigs are processed. Only used for fast debugging. Default 0 means no limitation. (int [=0])"
    ref: ""
  }
}