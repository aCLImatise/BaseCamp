version 1.0

task DemultiplexFasta.py {
  input {
    String mapMap
    String fastFastA
  }
  command <<<
    demultiplex_fasta.py \
      ~{if defined(mapMap) then ("--map " +  '"' + mapMap + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""}
  >>>
}