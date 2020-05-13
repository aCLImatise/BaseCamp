version 1.0

task ProteinsNotInLibrary.py {
  input {
    String fastFastA
    String inIn
    String outOut
  }
  command <<<
    proteins_not_in_library.py \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""}
  >>>
}