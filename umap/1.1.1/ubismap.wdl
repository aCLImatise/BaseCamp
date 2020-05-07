version 1.0

task Ubismap.py {
  input {
    Boolean kmKmErs
    Boolean genomeGenomeReady
    Boolean bisBisMap
    Boolean c2tC2t
    Boolean g2aG2a
    Boolean exitExitAfterIndexing
    String simultaneousSimultaneousJobs
    String varVarId
    String writeWriteScript
    Boolean pipePipe
    String chunkChunk
    String? fastFastAPath
    String? chrChrSizePath
    String? outOutDir
    String? queueQueueName
    String? bowtieBowtiePath
  }
  command <<<
    ubismap.py \
      ~{fastFastAPath} \
      ~{true="--kmers" false="" kmKmErs} \
      ~{true="-GenomeReady" false="" genomeGenomeReady} \
      ~{true="-Bismap" false="" bisBisMap} \
      ~{true="-C2T" false="" c2tC2t} \
      ~{true="-G2A" false="" g2aG2a} \
      ~{true="-ExitAfterIndexing" false="" exitExitAfterIndexing} \
      ~{if defined(simultaneousSimultaneousJobs) then ("-SimultaneousJobs " +  '"' + simultaneousSimultaneousJobs + '"') else ""} \
      ~{if defined(varVarId) then ("-var_id " +  '"' + varVarId + '"') else ""} \
      ~{if defined(writeWriteScript) then ("-write_script " +  '"' + writeWriteScript + '"') else ""} \
      ~{true="-pipe" false="" pipePipe} \
      ~{if defined(chunkChunk) then ("-chunk " +  '"' + chunkChunk + '"') else ""} \
      ~{chrChrSizePath} \
      ~{outOutDir} \
      ~{queueQueueName} \
      ~{bowtieBowtiePath}
  >>>
}