version 1.0

task EnrichmAnnotate {
  input {
    String logLog
    String verbosityVerbosity
    String outputOutput
    Boolean forceForce
    Array[String]+ genomeGenomeFiles
    String genomeGenomeDirectory
    Array[String]+ proteinProteinFiles
    String proteinProteinDirectory
    Boolean koKo
    Boolean koKoHmm
    Boolean pfamPfam
    Boolean tigrTigrFam
    Boolean clustersClusters
    Boolean orthologsOrthologs
    Boolean caCaZy
    Boolean ecEc
    Boolean cutCutGa
    Boolean cutCutNc
    Boolean cutCutTc
    Boolean cutCutKo
    String evalueEvalue
    String bitBit
    String idId
    String alnAlnQuery
    String alnAlnReference
    String cC
    String threadsThreads
    String parallelParallel
    String inflationInflation
    String suffixSuffix
    Boolean lightLight
    Boolean countCountDomains
    String chunkChunkNumber
    String chunkChunkMax
  }
  command <<<
    enrichm annotate \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(genomeGenomeFiles) then ("--genome_files " +  '"' + genomeGenomeFiles + '"') else ""} \
      ~{if defined(genomeGenomeDirectory) then ("--genome_directory " +  '"' + genomeGenomeDirectory + '"') else ""} \
      ~{if defined(proteinProteinFiles) then ("--protein_files " +  '"' + proteinProteinFiles + '"') else ""} \
      ~{if defined(proteinProteinDirectory) then ("--protein_directory " +  '"' + proteinProteinDirectory + '"') else ""} \
      ~{true="--ko" false="" koKo} \
      ~{true="--ko_hmm" false="" koKoHmm} \
      ~{true="--pfam" false="" pfamPfam} \
      ~{true="--tigrfam" false="" tigrTigrFam} \
      ~{true="--clusters" false="" clustersClusters} \
      ~{true="--orthologs" false="" orthologsOrthologs} \
      ~{true="--cazy" false="" caCaZy} \
      ~{true="--ec" false="" ecEc} \
      ~{true="--cut_ga" false="" cutCutGa} \
      ~{true="--cut_nc" false="" cutCutNc} \
      ~{true="--cut_tc" false="" cutCutTc} \
      ~{true="--cut_ko" false="" cutCutKo} \
      ~{if defined(evalueEvalue) then ("--evalue " +  '"' + evalueEvalue + '"') else ""} \
      ~{if defined(bitBit) then ("--bit " +  '"' + bitBit + '"') else ""} \
      ~{if defined(idId) then ("--id " +  '"' + idId + '"') else ""} \
      ~{if defined(alnAlnQuery) then ("--aln_query " +  '"' + alnAlnQuery + '"') else ""} \
      ~{if defined(alnAlnReference) then ("--aln_reference " +  '"' + alnAlnReference + '"') else ""} \
      ~{if defined(cC) then ("--c " +  '"' + cC + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(parallelParallel) then ("--parallel " +  '"' + parallelParallel + '"') else ""} \
      ~{if defined(inflationInflation) then ("--inflation " +  '"' + inflationInflation + '"') else ""} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{true="--light" false="" lightLight} \
      ~{true="--count_domains" false="" countCountDomains} \
      ~{if defined(chunkChunkNumber) then ("--chunk_number " +  '"' + chunkChunkNumber + '"') else ""} \
      ~{if defined(chunkChunkMax) then ("--chunk_max " +  '"' + chunkChunkMax + '"') else ""}
  >>>
}