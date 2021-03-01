version 1.0

task Happer {
  input {
    File? out
    Boolean? v
    String seq_file
    String bed
  }
  command <<<
    happer \
      ~{seq_file} \
      ~{bed} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "write haplotype sequences to the specified file;\\ndefault is the terminal (stdout)\\n"
    v: ""
    seq_file: "input sequences in Fasta format"
    bed: "haplotypes annotated in BED format"
  }
  output {
    File out_stdout = stdout()
  }
}