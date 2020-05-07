version 1.0

task RunBreakseq2.py {
  input {
    String nNThreads
    Array[String]+ bamsBams
    String workWork
    Array[String]+ chromosomesChromosomes
    String referenceReference
    String sampleSample
    Boolean keepKeepTemp
    String bpBpLib
    String bwaBwa
    String samSamTools
    Int minMinSpan
    String windowWindow
    Int minMinOverlap
    String bpBpLibGff
    String junctionJunctionLength
    Boolean formatFormatVersion
  }
  command <<<
    run_breakseq2.py \
      ~{if defined(nNThreads) then ("--nthreads " +  '"' + nNThreads + '"') else ""} \
      ~{if defined(bamsBams) then ("--bams " +  '"' + bamsBams + '"') else ""} \
      ~{if defined(workWork) then ("--work " +  '"' + workWork + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{true="--keep_temp" false="" keepKeepTemp} \
      ~{if defined(bpBpLib) then ("--bplib " +  '"' + bpBpLib + '"') else ""} \
      ~{if defined(bwaBwa) then ("--bwa " +  '"' + bwaBwa + '"') else ""} \
      ~{if defined(samSamTools) then ("--samtools " +  '"' + samSamTools + '"') else ""} \
      ~{if defined(minMinSpan) then ("--min_span " +  '"' + minMinSpan + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(minMinOverlap) then ("--min_overlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{if defined(bpBpLibGff) then ("--bplib_gff " +  '"' + bpBpLibGff + '"') else ""} \
      ~{if defined(junctionJunctionLength) then ("--junction_length " +  '"' + junctionJunctionLength + '"') else ""} \
      ~{true="--format_version" false="" formatFormatVersion}
  >>>
}