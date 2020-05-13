version 1.0

task MakePhylogeny.py {
  input {
    String inputInputFp
  }
  command <<<
    make_phylogeny.py \
      ~{if defined(inputInputFp) then ("--input_fp " +  '"' + inputInputFp + '"') else ""}
  >>>
}