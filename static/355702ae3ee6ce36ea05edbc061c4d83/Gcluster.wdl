version 1.0

task Gcluster.pl {
  input {
    Boolean genbankGenbankFileDirectory
    Boolean interestedInterestedGeneFile
    Boolean startStartAtMap
  }
  command <<<
    Gcluster.pl \
      ~{true="--genbank_file_directory" false="" genbankGenbankFileDirectory} \
      ~{true="--interested_gene_file" false="" interestedInterestedGeneFile} \
      ~{true="--start_at_map" false="" startStartAtMap}
  >>>
}