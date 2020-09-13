version 1.0

task CloseGapsInScaffFastaFileperl {
  input {
    File? scaffold_fast_a_file
  }
  command <<<
    closeGapsInScaffFastaFile_perl \
      ~{if defined(scaffold_fast_a_file) then ("--scaffold-fasta-file " +  '"' + scaffold_fast_a_file + '"') else ""}
  >>>
  parameter_meta {
    scaffold_fast_a_file: ": file containing the scaffold sequences"
  }
  output {
    File out_stdout = stdout()
  }
}