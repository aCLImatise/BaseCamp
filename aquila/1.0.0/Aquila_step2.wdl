version 1.0

task AquilaStep2 {
  input {
    String chrChrStart
    String chrChrEnd
    String outOutDir
    String referenceReference
    String numNumThreads
    String numNumThreadsSpades
    String blockBlockLenUse
  }
  command <<<
    Aquila_step2 \
      ~{if defined(chrChrStart) then ("--chr_start " +  '"' + chrChrStart + '"') else ""} \
      ~{if defined(chrChrEnd) then ("--chr_end " +  '"' + chrChrEnd + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(numNumThreadsSpades) then ("--num_threads_spades " +  '"' + numNumThreadsSpades + '"') else ""} \
      ~{if defined(blockBlockLenUse) then ("--block_len_use " +  '"' + blockBlockLenUse + '"') else ""}
  >>>
}