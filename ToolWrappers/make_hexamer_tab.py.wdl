version 1.0

task MakeHexamerTabpy {
  input {
    File? cod
    File? non_cod
  }
  command <<<
    make_hexamer_tab_py \
      ~{if defined(cod) then ("--cod " +  '"' + cod + '"') else ""} \
      ~{if defined(non_cod) then ("--noncod " +  '"' + non_cod + '"') else ""}
  >>>
  parameter_meta {
    cod: "Coding sequence (must be CDS without UTR, i.e. from\\nstart coden to stop coden) in fasta format"
    non_cod: "Noncoding sequences in fasta format\\n"
  }
  output {
    File out_stdout = stdout()
  }
}