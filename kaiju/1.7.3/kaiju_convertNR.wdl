version 1.0

task KaijuConvertNR {
  input {
    File? name_nodesdmp_file
    File? name_protaccessiontaxid_file
    File? name_output_file
    Boolean? prefix_taxon_id
    File? name_nr_file
    File? name_file_taxon
    File? name_will_excluded
  }
  command <<<
    kaiju-convertNR \
      ~{if defined(name_nodesdmp_file) then ("-t " +  '"' + name_nodesdmp_file + '"') else ""} \
      ~{if defined(name_protaccessiontaxid_file) then ("-g " +  '"' + name_protaccessiontaxid_file + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{true="-a" false="" prefix_taxon_id} \
      ~{if defined(name_nr_file) then ("-i " +  '"' + name_nr_file + '"') else ""} \
      ~{if defined(name_file_taxon) then ("-l " +  '"' + name_file_taxon + '"') else ""} \
      ~{if defined(name_will_excluded) then ("-e " +  '"' + name_will_excluded + '"') else ""}
  >>>
  parameter_meta {
    name_nodesdmp_file: "Name of nodes.dmp file."
    name_protaccessiontaxid_file: "Name of prot.accession2taxid file."
    name_output_file: "Name of output file."
    prefix_taxon_id: "Prefix taxon ID in database names with the first accession number per record."
    name_nr_file: "Name of NR file. If this option is not used, then the program will read from STDIN."
    name_file_taxon: "Name of file with taxon IDs. Only records having one of these IDs as ancestor in the taxonomy will be used."
    name_will_excluded: "Name of file with accession numbers that will be excluded."
  }
}