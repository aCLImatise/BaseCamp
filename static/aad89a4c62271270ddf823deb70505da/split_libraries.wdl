version 1.0

task SplitLibraries.py {
  input {
    String mapMap
    String fastFastA
  }
  command <<<
    split_libraries.py \
      ~{if defined(mapMap) then ("--map " +  '"' + mapMap + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""}
  >>>
}