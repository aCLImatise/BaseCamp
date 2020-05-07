version 1.0

task ParallelRnaBlat {
  input {
    String numNumThreads
    String similarSimilar
    String? parallelParallelBlat
    String? reReFfa
    String? queryQueryFa
  }
  command <<<
    parallel_rna_blat \
      ~{parallelParallelBlat} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(similarSimilar) then ("--similar " +  '"' + similarSimilar + '"') else ""} \
      ~{reReFfa} \
      ~{queryQueryFa}
  >>>
}