version 1.0

task MakeLibraryIdLists.py {
  input {
    String inputInputFastA
  }
  command <<<
    make_library_id_lists.py \
      ~{if defined(inputInputFastA) then ("--input_fasta " +  '"' + inputInputFastA + '"') else ""}
  >>>
}