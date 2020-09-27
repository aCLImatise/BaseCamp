version 1.0

task DRAMpyAnnotateGenes {
  input {
    String? o
    String? i
  }
  command <<<
    DRAM_py annotate_genes \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}