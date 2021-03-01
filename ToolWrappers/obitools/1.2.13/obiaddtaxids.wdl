version 1.0

task Obiaddtaxids {
  input {
    String? u
    Boolean? debug
    Boolean? without_progress_bar
    File? genus_found
    File? unidentified
    File? dirty
    String? format
    String? key_name
    Int? restricting_ancestor
    File? database
    File? taxonomy_dump
    String database_dot
    String bash
    File file_dot
  }
  command <<<
    obiaddtaxids \
      ~{database_dot} \
      ~{bash} \
      ~{file_dot} \
      ~{if defined(u) then ("-u " +  '"' + u + '"') else ""} \
      ~{if (debug) then "--DEBUG" else ""} \
      ~{if (without_progress_bar) then "--without-progress-bar" else ""} \
      ~{if defined(genus_found) then ("--genus_found " +  '"' + genus_found + '"') else ""} \
      ~{if defined(unidentified) then ("--unidentified " +  '"' + unidentified + '"') else ""} \
      ~{if defined(dirty) then ("--dirty " +  '"' + dirty + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(key_name) then ("--key-name " +  '"' + key_name + '"') else ""} \
      ~{if defined(restricting_ancestor) then ("--restricting_ancestor " +  '"' + restricting_ancestor + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(taxonomy_dump) then ("--taxonomy-dump " +  '"' + taxonomy_dump + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    u: "\\"
    debug: "Set logging in debug mode"
    without_progress_bar: "desactivate progress bar"
    genus_found: "(not with UNITE databases) file used to store\\nsequences with the genus found."
    unidentified: "file used to store completely unidentified sequences."
    dirty: "(not with UNITE databases) if chosen, ALL the words in\\nthe name used to identify the sequences will be\\nsearched when neither the exact name nor the genus\\nhave been found. Only use if the sequences in your\\ndatabase are badly named with useless words or numbers\\nin the name etc. The sequences identified this way\\nwill be written in <FILENAME>."
    format: "type of the database with the taxa to be added.\\nPossibilities : 'raw', 'UNITE_FULL', 'UNITE_GENERAL'\\nor 'SILVA'.The UNITE_FULL format is the one used for\\nthe 'Full UNITE+INSD dataset', and the UNITE_GENERAL\\nformat is the one used for the 'General FASTA\\nrelease'. Default : raw."
    key_name: "name of the key attribute containing the taxon name in\\ndatabases of 'raw' type. Default : the taxon name is\\nthe id of the sequence. The taxon name MUST have '_'\\nbetween the words of the name when it's the id, and\\nCAN be of this form when it's in a field."
    restricting_ancestor: "can be a word or a taxid (number). Enables to restrict\\nthe search of taxids under a specified ancestor. If\\nit's a word, it's the field containing the ancestor's\\ntaxid in each sequence's header (can be different for\\neach sequence). If it's a number, it's the taxid of\\nthe ancestor (in which case it's the same for all the\\nsequences)"
    database: "ecoPCR taxonomy Database name"
    taxonomy_dump: "NCBI Taxonomy dump repository name\\n"
    database_dot: "- If the input file is an ``OBITools`` extended :doc:`fasta <../fasta>` format, the ``-k`` option"
    bash: "> obiaddtaxids -k species_name -g genus_identified.fasta \\"
    file_dot: "- Otherwise the sequence record is stored in the ``unidentified.fasta`` file."
  }
  output {
    File out_stdout = stdout()
  }
}