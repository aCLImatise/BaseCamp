version 1.0

task IgdiscoverDendrogram {
  input {
    String markMark
    String methodMethod
    String? fastFastA
    String? plotPlot
  }
  command <<<
    igdiscover dendrogram \
      ~{fastFastA} \
      ~{if defined(markMark) then ("--mark " +  '"' + markMark + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{plotPlot}
  >>>
}