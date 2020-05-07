version 1.0

task ProteinorthoCompareProteinorthoGraphs.plFILEB {
  input {
    File? fileFileA
    File? fileFileB
  }
  command <<<
    proteinortho_compareProteinorthoGraphs.pl FILE_B \
      ~{fileFileA} \
      ~{fileFileB}
  >>>
}