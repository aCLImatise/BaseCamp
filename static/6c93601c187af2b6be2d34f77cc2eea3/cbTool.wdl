version 1.0

task CbTool {
  input {
    Boolean? debug
    Boolean? fix_dots
    String? first
    String? del
    Int mtx_two_tsv
  }
  command <<<
    cbTool \
      ~{mtx_two_tsv} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (fix_dots) then "--fixDots" else ""} \
      ~{if defined(first) then ("--first " +  '"' + first + '"') else ""} \
      ~{if defined(del) then ("--del " +  '"' + del + '"') else ""}
  >>>
  parameter_meta {
    debug: "show debug messages"
    fix_dots: "try to fix R's mangling of various special chars to '.' in\\nthe cell IDs"
    first: "only for metaCat: names of fields to order first, comma-\\nsep, e.g. disease,age. Not cellId, that's always the first\\nfield"
    del: "only for metaCat: names of fields to remove"
    mtx_two_tsv: "- convert matrix market to .tsv.gz"
  }
  output {
    File out_stdout = stdout()
  }
}