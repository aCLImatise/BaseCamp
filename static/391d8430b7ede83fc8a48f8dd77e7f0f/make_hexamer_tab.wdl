version 1.0

task MakeHexamerTab.py {
  input {
    String? cod
    String? non_cod
  }
  command <<<
    make_hexamer_tab.py \
      ~{if defined(cod) then ("--cod " +  '"' + cod + '"') else ""} \
      ~{if defined(non_cod) then ("--noncod " +  '"' + non_cod + '"') else ""}
  >>>
  parameter_meta {
    cod: "Coding sequence (must be CDS without UTR, i.e. from start coden to stop coden) in fasta format"
    non_cod: "Noncoding sequences in fasta format"
  }
}