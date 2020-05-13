version 1.0

task BlastdbAliastool {
  input {
    String numNumVolumes
  }
  command <<<
    blastdb_aliastool \
      ~{if defined(numNumVolumes) then ("-num_volumes " +  '"' + numNumVolumes + '"') else ""}
  >>>
}