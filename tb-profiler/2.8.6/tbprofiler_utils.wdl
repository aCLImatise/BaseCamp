version 1.0

task TbprofilerUtils.pyGbcfLineage {
  input {
    String prefixPrefix
    String outOutFmt
    String dbDb
    String? bcfBcf
  }
  command <<<
    tbprofiler_utils.py gbcf_lineage \
      ~{bcfBcf} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(outOutFmt) then ("--outfmt " +  '"' + outOutFmt + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""}
  >>>
}