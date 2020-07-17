version 1.0

task Fastqe {
  input {
    String? min_len
    Boolean? mean
    Boolean? bin
    Boolean? min
    Boolean? max
    String? log
    Boolean? scale
    String fast_a_file
  }
  command <<<
    fastqe \
      ~{fast_a_file} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{true="--mean" false="" mean} \
      ~{true="--bin" false="" bin} \
      ~{true="--min" false="" min} \
      ~{true="--max" false="" max} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{true="--scale" false="" scale}
  >>>
  parameter_meta {
    min_len: "Minimum length sequence to include in stats (default 0)"
    mean: "show mean quality per position (DEFAULT)"
    bin: "use binned scores"
    min: "show minimum quality per position"
    max: "show maximum quality per position"
    log: "record program progress in LOG_FILE"
    scale: "show relevant scale in output"
    fast_a_file: "Input FASTQ files"
  }
}