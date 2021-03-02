version 1.0

task CbTool {
  input {
    Boolean? debug
    Boolean? fix_dots
    File? order
    String? del
    Int mtx_two_tsv
  }
  command <<<
    cbTool \
      ~{mtx_two_tsv} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (fix_dots) then "--fixDots" else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if defined(del) then ("--del " +  '"' + del + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ucsc-cell-browser:0.7.15--py_0"
  }
  parameter_meta {
    debug: "show debug messages"
    fix_dots: "for reorder and metaCat: try to fix R's mangling of various\\nspecial chars to '.' in the cell IDs"
    order: "only for reorder and metaCat: new order of fields, comma-\\nsep, e.g. 'disease,age'. Do not include cellId, it's always\\nthe first field by definition. Fields that are in the file\\nbut not specified here will be appended as the last\\ncolumns."
    del: "only for reorder and metaCat: names of fields to remove"
    mtx_two_tsv: "- convert matrix market to .tsv.gz"
  }
  output {
    File out_stdout = stdout()
  }
}