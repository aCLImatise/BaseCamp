version 1.0

task ProteinorthoGrabProteins.pl {
  input {
    Boolean toToFiles
    Boolean eE
    Boolean exactExact
    Boolean sourceSource
    String fF
  }
  command <<<
    proteinortho_grab_proteins.pl \
      ~{true="-tofiles" false="" toToFiles} \
      ~{true="-E" false="" eE} \
      ~{true="-exact" false="" exactExact} \
      ~{true="-source" false="" sourceSource} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""}
  >>>
}