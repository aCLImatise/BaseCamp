version 1.0

task ValidateBlatParallelRna {
  input {
    String numNumThreads
    String similarSimilar
    String minMinContig
    String similarSimilar
    String completeCompleteRate
    Boolean isIsLocal
    String? parallelParallelBlat
    String? reReFfa
    String? queryQueryFa
  }
  command <<<
    validate_blat_parallel_rna \
      ~{parallelParallelBlat} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(similarSimilar) then ("--similar " +  '"' + similarSimilar + '"') else ""} \
      ~{if defined(minMinContig) then ("--min_contig " +  '"' + minMinContig + '"') else ""} \
      ~{if defined(similarSimilar) then ("--similar " +  '"' + similarSimilar + '"') else ""} \
      ~{if defined(completeCompleteRate) then ("--complete_rate " +  '"' + completeCompleteRate + '"') else ""} \
      ~{true="--is_local" false="" isIsLocal} \
      ~{reReFfa} \
      ~{queryQueryFa}
  >>>
}