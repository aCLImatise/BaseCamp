version 1.0

task FcGetReadHctgMap.py {
  input {
    String baseBaseDir
    String rawRawReadIdsFn
    String pPReadIdsFn
    String pPCtgEdgesFn
    String hHCtgEdgesFn
    String hHCtgIdsFn
    String outputOutputFn
  }
  command <<<
    fc_get_read_hctg_map.py \
      ~{if defined(baseBaseDir) then ("--base-dir " +  '"' + baseBaseDir + '"') else ""} \
      ~{if defined(rawRawReadIdsFn) then ("--rawread-ids-fn " +  '"' + rawRawReadIdsFn + '"') else ""} \
      ~{if defined(pPReadIdsFn) then ("--pread-ids-fn " +  '"' + pPReadIdsFn + '"') else ""} \
      ~{if defined(pPCtgEdgesFn) then ("--p-ctg-edges-fn " +  '"' + pPCtgEdgesFn + '"') else ""} \
      ~{if defined(hHCtgEdgesFn) then ("--h-ctg-edges-fn " +  '"' + hHCtgEdgesFn + '"') else ""} \
      ~{if defined(hHCtgIdsFn) then ("--h-ctg-ids-fn " +  '"' + hHCtgIdsFn + '"') else ""} \
      ~{if defined(outputOutputFn) then ("--output-fn " +  '"' + outputOutputFn + '"') else ""}
  >>>
}