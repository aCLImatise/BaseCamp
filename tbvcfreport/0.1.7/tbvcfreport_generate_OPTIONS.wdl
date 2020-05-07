version 1.0

task TbvcfreportGenerateOPTIONS {
  input {
    File tbTbProfilerReport
    Boolean filterFilterUdi
  }
  command <<<
    tbvcfreport generate OPTIONS \
      ~{if defined(tbTbProfilerReport) then ("--tbprofiler-report " +  '"' + tbTbProfilerReport + '"') else ""} \
      ~{true="--filter-udi" false="" filterFilterUdi}
  >>>
}