version 1.0

task SequenzaUtilsBam2seqz {
  input {
    Boolean pilePileUp
    String normalNormal
    String tumorTumor
    String gcGc
    String fastFastA
    String outputOutput
    String normalNormal2
    String homHom
    String hetHet
    String hetHetF
    Array[String]+ chromosomeChromosome
    String parallelParallel
    String samSamTools
    String tabTabIx
    String qQLimit
    String qQFormat
    String nN
  }
  command <<<
    sequenza-utils bam2seqz \
      ~{true="--pileup" false="" pilePileUp} \
      ~{if defined(normalNormal) then ("--normal " +  '"' + normalNormal + '"') else ""} \
      ~{if defined(tumorTumor) then ("--tumor " +  '"' + tumorTumor + '"') else ""} \
      ~{if defined(gcGc) then ("-gc " +  '"' + gcGc + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(normalNormal2) then ("--normal2 " +  '"' + normalNormal2 + '"') else ""} \
      ~{if defined(homHom) then ("--hom " +  '"' + homHom + '"') else ""} \
      ~{if defined(hetHet) then ("--het " +  '"' + hetHet + '"') else ""} \
      ~{if defined(hetHetF) then ("--het_f " +  '"' + hetHetF + '"') else ""} \
      ~{if defined(chromosomeChromosome) then ("--chromosome " +  '"' + chromosomeChromosome + '"') else ""} \
      ~{if defined(parallelParallel) then ("--parallel " +  '"' + parallelParallel + '"') else ""} \
      ~{if defined(samSamTools) then ("--samtools " +  '"' + samSamTools + '"') else ""} \
      ~{if defined(tabTabIx) then ("--tabix " +  '"' + tabTabIx + '"') else ""} \
      ~{if defined(qQLimit) then ("--qlimit " +  '"' + qQLimit + '"') else ""} \
      ~{if defined(qQFormat) then ("--qformat " +  '"' + qQFormat + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""}
  >>>
}