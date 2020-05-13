version 1.0

task RunMiso.py {
  input {
    String eventEventType
    String useUseCompressed
    String viewViewGene
  }
  command <<<
    run_miso.py \
      ~{if defined(eventEventType) then ("--event-type " +  '"' + eventEventType + '"') else ""} \
      ~{if defined(useUseCompressed) then ("--use-compressed " +  '"' + useUseCompressed + '"') else ""} \
      ~{if defined(viewViewGene) then ("--view-gene " +  '"' + viewViewGene + '"') else ""}
  >>>
}