version 1.0

task FiltergffOverlap {
  input {
    Int? verbose
    Boolean? sorted
    String? choose_func
    Boolean? progress
    String annotations
  }
  command <<<
    filter_gff overlap \
      ~{annotations} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (sorted) then "--sorted" else ""} \
      ~{if defined(choose_func) then ("--choose-func " +  '"' + choose_func + '"') else ""} \
      ~{if (progress) then "--progress" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Size of the overlap that triggers the filter\\n[default: 100]"
    sorted: "If the GFF file is sorted (all of a sequence\\nannotations are contiguos and sorted by\\nstrand) can use less memory, `sort -s -k 1,1\\n-k 7,7` can be used"
    choose_func: "Function to choose between two overlapping"
    progress: "Shows Progress Bar"
    annotations: "-a, --sort-attr [bitscore|identity|length]"
  }
  output {
    File out_stdout = stdout()
  }
}