version 1.0

task PanPipe {
  input {
    Boolean threadsThreads
    Boolean roarRoarYArgs
    Boolean proProKkAArgs
    Boolean gifGifRopArgs
  }
  command <<<
    pan_pipe \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--roary_args" false="" roarRoarYArgs} \
      ~{true="--prokka_args" false="" proProKkAArgs} \
      ~{true="--gifrop_args" false="" gifGifRopArgs}
  >>>
}