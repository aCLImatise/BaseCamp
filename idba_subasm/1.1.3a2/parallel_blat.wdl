version 1.0

task ParallelBlat {
  input {
    String numNumThreads
    String similarSimilar
    String? reReFfa
    String? queryQueryFa
  }
  command <<<
    parallel_blat \
      ~{reReFfa} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(similarSimilar) then ("--similar " +  '"' + similarSimilar + '"') else ""} \
      ~{queryQueryFa}
  >>>
}