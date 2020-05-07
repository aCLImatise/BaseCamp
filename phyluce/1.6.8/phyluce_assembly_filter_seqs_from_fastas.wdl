version 1.0

task PhyluceAssemblyFilterSeqsFromFastas {
  input {
    String proportionProportion
    String countCount
  }
  command <<<
    phyluce_assembly_filter_seqs_from_fastas \
      ~{if defined(proportionProportion) then ("--proportion " +  '"' + proportionProportion + '"') else ""} \
      ~{if defined(countCount) then ("--count " +  '"' + countCount + '"') else ""}
  >>>
}