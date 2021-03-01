version 1.0

task Obitaxonomy {
  input {
    Boolean? debug
    Boolean? without_progress_bar
    String? rankparent__addtaxontaxonnamerankparentadds
    String? delete_local_tax_on
    String? add_species
    File? add_file
    String? key_name
    String? taxid__addfavoritenametaxonnametaxidadd
    Boolean? _mintaxidminimal_taxid
    Int? restricting_ancestor
    File? path
    File? database
    File? taxonomy_dump
  }
  command <<<
    obitaxonomy \
      ~{if (debug) then "--DEBUG" else ""} \
      ~{if (without_progress_bar) then "--without-progress-bar" else ""} \
      ~{if defined(rankparent__addtaxontaxonnamerankparentadds) then ("-a " +  '"' + rankparent__addtaxontaxonnamerankparentadds + '"') else ""} \
      ~{if defined(delete_local_tax_on) then ("--delete-local-taxon " +  '"' + delete_local_tax_on + '"') else ""} \
      ~{if defined(add_species) then ("--add-species " +  '"' + add_species + '"') else ""} \
      ~{if defined(add_file) then ("--add-file " +  '"' + add_file + '"') else ""} \
      ~{if defined(key_name) then ("--key_name " +  '"' + key_name + '"') else ""} \
      ~{if defined(taxid__addfavoritenametaxonnametaxidadd) then ("-f " +  '"' + taxid__addfavoritenametaxonnametaxidadd + '"') else ""} \
      ~{if (_mintaxidminimal_taxid) then "-m" else ""} \
      ~{if defined(restricting_ancestor) then ("--restricting_ancestor " +  '"' + restricting_ancestor + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(taxonomy_dump) then ("--taxonomy-dump " +  '"' + taxonomy_dump + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "Set logging in debug mode"
    without_progress_bar: "desactivate progress bar"
    rankparent__addtaxontaxonnamerankparentadds: ":rank:parent, --add-taxon=<taxon_name>:rank:parent\\nAdds a new taxon to the taxonomy. The new taxon is\\ndescribed by three values separated by colons: the\\nscientific name, the rank of the new taxon, the taxid\\nof the parent taxon"
    delete_local_tax_on: "Erase a local taxon"
    add_species: "Adds a new species to the taxonomy. The new species is\\ndescribed by its scientific name"
    add_file: "Add all the species from a fasta file to the taxonomy.\\nThe header of the sequences must contain the field\\ndefined by the -k option"
    key_name: "Name of the attribute key used to find the species\\nnames in the headers when the -F option is used.\\nDefault = 'species_name'"
    taxid__addfavoritenametaxonnametaxidadd: ":taxid, --add-favorite-name=<taxon_name>:taxid\\nAdd a new favorite name to the taxonomy. The new name\\nis described by two values separated by a colon. the\\nnew favorite name and the taxid of the taxon"
    _mintaxidminimal_taxid: "####, --min-taxid=####\\nminimal taxid for the newly added taxid"
    restricting_ancestor: "works with the -F option. Can be a word or a taxid\\n(number). Enables to restrict the adding of taxids\\nunder a specified ancestor. If it's a word, it's the\\nfield containing the ancestor's taxid in each\\nsequence's header (can be different for each\\nsequence). If it's a number, it's the taxid of the\\nancestor (in which case it's the same for all the\\nsequences). All the sequences in the file for which\\nthe genus can't be found will be added under this\\nancestor."
    path: "works with the -F option. Field name for the taxonomy\\npath of the taxa if they are in the headers of the\\nsequences. Must be of the form\\n'Fungi,Agaricomycetes,Thelephorales,Thelephoraceae'\\nwith the highest ancestors first and ',' as separators\\nbetween ancestors"
    database: "ecoPCR taxonomy Database name"
    taxonomy_dump: "NCBI Taxonomy dump repository name\\n"
  }
  output {
    File out_stdout = stdout()
  }
}