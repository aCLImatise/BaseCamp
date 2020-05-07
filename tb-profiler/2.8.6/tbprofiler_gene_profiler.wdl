version 1.0

task TbprofilerGeneProfiler.pyCollate {
  input {
    String dirDir
    String suffixSuffix
  }
  command <<<
    tbprofiler_gene_profiler.py collate \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""}
  >>>
}