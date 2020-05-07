version 1.0

task PlaceSeqs.py {
  input {
    File studyStudyFastA
    File refRefDir
    File outOutTree
    String processesProcesses
    File intermediateIntermediate
    Int minMinAlign
    String chunkChunkSize
    Boolean verboseVerbose
  }
  command <<<
    place_seqs.py \
      ~{if defined(studyStudyFastA) then ("--study_fasta " +  '"' + studyStudyFastA + '"') else ""} \
      ~{if defined(refRefDir) then ("--ref_dir " +  '"' + refRefDir + '"') else ""} \
      ~{if defined(outOutTree) then ("--out_tree " +  '"' + outOutTree + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{if defined(intermediateIntermediate) then ("--intermediate " +  '"' + intermediateIntermediate + '"') else ""} \
      ~{if defined(minMinAlign) then ("--min_align " +  '"' + minMinAlign + '"') else ""} \
      ~{if defined(chunkChunkSize) then ("--chunk_size " +  '"' + chunkChunkSize + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}