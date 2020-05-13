version 1.0

task BuildMidasDb.py {
  input {
    Int threadsThreads
    Boolean compressCompress
    Int maxMaxSpecies
    Int maxMaxGenomes
    String? inInDir
    String? mapMapFile
    String? outdirOutdir
  }
  command <<<
    build_midas_db.py \
      ~{inInDir} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--compress" false="" compressCompress} \
      ~{if defined(maxMaxSpecies) then ("--max_species " +  '"' + maxMaxSpecies + '"') else ""} \
      ~{if defined(maxMaxGenomes) then ("--max_genomes " +  '"' + maxMaxGenomes + '"') else ""} \
      ~{mapMapFile} \
      ~{outdirOutdir}
  >>>
}