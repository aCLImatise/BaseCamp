version 1.0

task ChainSplit {
  input {
    Boolean? split_query_default
    String? lump
    String outdir
    String in_chain
  }
  command <<<
    chainSplit \
      ~{outdir} \
      ~{in_chain} \
      ~{if (split_query_default) then "-q" else ""} \
      ~{if defined(lump) then ("-lump " +  '"' + lump + '"') else ""}
  >>>
  parameter_meta {
    split_query_default: "- Split on query (default is on target)"
    lump: "Lump together so have only N split files."
    outdir: ""
    in_chain: ""
  }
  output {
    File out_stdout = stdout()
  }
}