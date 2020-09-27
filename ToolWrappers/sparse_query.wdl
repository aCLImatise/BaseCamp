version 1.0

task SparseQuery {
  input {
    String? dbname
    File? seq_list
    String? default
    Int? min
    Int? max
    String? group
    String? tag
    String? index
    String? barcode
    String? assembly_accession
    String? refseq_category
    String? assembly_level
    String? taxid
    String? organism_name
    String? species
    String? genus
    String? family
    String? order
    String? class
    String? phylum
    String? kingdom
    String? superkingdom
  }
  command <<<
    sparse query \
      ~{if defined(dbname) then ("--dbname " +  '"' + dbname + '"') else ""} \
      ~{if defined(seq_list) then ("--seqlist " +  '"' + seq_list + '"') else ""} \
      ~{if defined(default) then ("--default " +  '"' + default + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(barcode) then ("--barcode " +  '"' + barcode + '"') else ""} \
      ~{if defined(assembly_accession) then ("--assembly_accession " +  '"' + assembly_accession + '"') else ""} \
      ~{if defined(refseq_category) then ("--refseq_category " +  '"' + refseq_category + '"') else ""} \
      ~{if defined(assembly_level) then ("--assembly_level " +  '"' + assembly_level + '"') else ""} \
      ~{if defined(taxid) then ("--taxid " +  '"' + taxid + '"') else ""} \
      ~{if defined(organism_name) then ("--organism_name " +  '"' + organism_name + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(genus) then ("--genus " +  '"' + genus + '"') else ""} \
      ~{if defined(family) then ("--family " +  '"' + family + '"') else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if defined(class) then ("--class " +  '"' + class + '"') else ""} \
      ~{if defined(phylum) then ("--phylum " +  '"' + phylum + '"') else ""} \
      ~{if defined(kingdom) then ("--kingdom " +  '"' + kingdom + '"') else ""} \
      ~{if defined(superkingdom) then ("--superkingdom " +  '"' + superkingdom + '"') else ""}
  >>>
  parameter_meta {
    dbname: "Name for the database. REQUIRED."
    seq_list: "File name for the output. Default: to screen."
    default: "Default MapDB criteria for updates. Choose from:\\nrepresentative, subpopulation, Virus, Eukaryota"
    min: "Minimum size of genomes to show"
    max: "Maximum size of genomes to show"
    group: "Filter using the prefix of barcode addresses"
    tag: "Filter by relationships between different level of barcodes. i.e.,\\n\\\"p!=r;p==a\\\" gets references that have the same numbers in p groups and a groups, but different between p groups and r groups"
    index: "Filter by index."
    barcode: "Filter by barcode."
    assembly_accession: "Filter by assembly_accession."
    refseq_category: "Filter by refseq_category."
    assembly_level: "Filter by assembly_level."
    taxid: "Filter by taxid."
    organism_name: "Filter by organism_name."
    species: "Filter by species."
    genus: "Filter by genus."
    family: "Filter by family."
    order: "Filter by order."
    class: "Filter by class."
    phylum: "Filter by phylum."
    kingdom: "Filter by kingdom."
    superkingdom: "Filter by superkingdom.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_seq_list = "${in_seq_list}"
  }
}