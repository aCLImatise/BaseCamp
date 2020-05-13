version 1.0

task DfastFileDownloader.py {
  input {
    Array[String]+ proteinProtein
    Array[String]+ cddCdd
    Array[String]+ hmmHmm
    Boolean assemblyAssembly
    Boolean assemblyAssemblyFastA
    Boolean noNoIndexing
    File outOut
  }
  command <<<
    dfast_file_downloader.py \
      ~{if defined(proteinProtein) then ("--protein " +  '"' + proteinProtein + '"') else ""} \
      ~{if defined(cddCdd) then ("--cdd " +  '"' + cddCdd + '"') else ""} \
      ~{if defined(hmmHmm) then ("--hmm " +  '"' + hmmHmm + '"') else ""} \
      ~{true="--assembly" false="" assemblyAssembly} \
      ~{true="--assembly_fasta" false="" assemblyAssemblyFastA} \
      ~{true="--no_indexing" false="" noNoIndexing} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""}
  >>>
}