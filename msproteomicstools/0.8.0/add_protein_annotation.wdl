version 1.0

task AddProteinAnnotation.py {
  input {
    String fastFastA
    String inIn
    String outOut
  }
  command <<<
    add_protein_annotation.py \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""}
  >>>
}