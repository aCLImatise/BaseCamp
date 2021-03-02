version 1.0

task VSNPStep2py {
  input {
    String? reference
    Boolean? table
    Boolean? all
    Boolean? subset
    Boolean? debug
    Boolean? no_filters
    Boolean? filter_finder
    Directory? cwd
    File? gbk
    String prog
  }
  command <<<
    vSNP_step2_py \
      ~{prog} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (table) then "--table" else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if (subset) then "--subset" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (no_filters) then "--no_filters" else ""} \
      ~{if (filter_finder) then "--filter_finder" else ""} \
      ~{if defined(cwd) then ("--cwd " +  '"' + cwd + '"') else ""} \
      ~{if defined(gbk) then ("--gbk " +  '"' + gbk + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference: "provide a valid reference, see -t output"
    table: "see valid reference types available"
    all: "create table with all isolates"
    subset: "create trees with a subset of sample that represent\\nthe whole"
    debug: "turn off map.pooling of samples"
    no_filters: "run without applying filters"
    filter_finder: "write possible positions to filter to text file"
    cwd: "Optional: path to VCF files"
    gbk: "Optional: provide full path to gbk file"
    prog: ""
  }
  output {
    File out_stdout = stdout()
  }
}