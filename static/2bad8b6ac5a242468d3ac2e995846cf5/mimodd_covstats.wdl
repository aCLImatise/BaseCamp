version 1.0

task MimoddCovstats {
  input {
    String ofileOfile
    String? covCovStats
    String? inputInput
    File? fileFile
  }
  command <<<
    mimodd covstats \
      ~{covCovStats} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""} \
      ~{inputInput} \
      ~{fileFile}
  >>>
}