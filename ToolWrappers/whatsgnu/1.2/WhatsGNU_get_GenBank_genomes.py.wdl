version 1.0

task WhatsGNUGetGenBankGenomespy {
  input {
    Boolean? faa
    Boolean? contigs
    Boolean? remove
    String list
    String output_folder
  }
  command <<<
    WhatsGNU_get_GenBank_genomes_py \
      ~{list} \
      ~{output_folder} \
      ~{if (faa) then "--faa" else ""} \
      ~{if (contigs) then "--contigs" else ""} \
      ~{if (remove) then "--remove" else ""}
  >>>
  parameter_meta {
    faa: "protein faa file from GenBank"
    contigs: "genomic fna file from GenBank"
    remove: "remove assembly_summary_genbank.txt after done"
    list: "a list.txt file of GenBank accession numbers (GCA#.#)"
    output_folder: "give name for output folder to be created"
  }
  output {
    File out_stdout = stdout()
  }
}