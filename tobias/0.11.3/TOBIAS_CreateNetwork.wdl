version 1.0

task TOBIASCreateNetwork {
  input {
    Boolean? tfbs
    Boolean? origin
    Boolean? start
    Boolean? max_len
    Boolean? outdir
    Int? verbosity
  }
  command <<<
    TOBIAS CreateNetwork \
      ~{true="--TFBS" false="" tfbs} \
      ~{true="--origin" false="" origin} \
      ~{true="--start" false="" start} \
      ~{true="--max-len" false="" max_len} \
      ~{true="--outdir" false="" outdir} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    tfbs: "[ [ ...]]   File(s) containing TFBS (with annotation) to create network from"
    origin: "File containing mapping of TF <-> origin gene"
    start: "Name of node to start in (default: all nodes)"
    max_len: "Maximum number of nodes in paths through graph (default: 4)"
    outdir: "Path to output directory (default: createnetwork_output)"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats, 4: debug, 5: spam) (default: 3)"
  }
}