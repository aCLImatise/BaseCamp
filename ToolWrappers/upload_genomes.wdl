version 1.0

task UploadGenomes {
  input {
    File? external_genomes
    File? external_zip
    String select_taxa_do_tpy
  }
  command <<<
    upload_genomes \
      ~{select_taxa_do_tpy} \
      ~{if (external_genomes) then "--external-genomes" else ""} \
      ~{if defined(external_zip) then ("--external-zip " +  '"' + external_zip + '"') else ""}
  >>>
  parameter_meta {
    external_genomes: "=    comma-separated list of label:nucleotide fasta file pairs of externally supplied genomes.\\nlabel:FILE,...     labels should be unique as genomes will be identified by this label in further output files"
    external_zip: "destination path for archive of user provided external genomes containing formatted nucleotide fasta files"
    select_taxa_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
    File out_external_genomes = "${in_external_genomes}"
  }
}