version 1.0

task VSNPStep2.py {
  input {
    String? reference
    Boolean? table
    Boolean? all
    Boolean? subset
    Boolean? debug
    Boolean? no_filters
    Boolean? filter_finder
    String? cwd
    String? gbk
    String prog
  }
  command <<<
    vSNP_step2.py \
      ~{prog} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--table" false="" table} \
      ~{true="--all" false="" all} \
      ~{true="--subset" false="" subset} \
      ~{true="--debug" false="" debug} \
      ~{true="--no_filters" false="" no_filters} \
      ~{true="--filter_finder" false="" filter_finder} \
      ~{if defined(cwd) then ("--cwd " +  '"' + cwd + '"') else ""} \
      ~{if defined(gbk) then ("--gbk " +  '"' + gbk + '"') else ""}
  >>>
  parameter_meta {
    reference: "provide a valid reference, see -t output"
    table: "see valid reference types available"
    all: "create table with all isolates"
    subset: "create trees with a subset of sample that represent the whole"
    debug: "turn off map.pooling of samples"
    no_filters: "run without applying filters"
    filter_finder: "write possible positions to filter to text file"
    cwd: "Optional: path to VCF files"
    gbk: "Optional: provide full path to gbk file"
    prog: ""
  }
}