version 1.0

task Gff3ToEmbl {
  input {
    String? authors
    String? title
    String? publication
    String? genome_type
    String? classification
    File? output_filename
    File? locus_tag
    String? translation_table
    File? chromosome_list
    String organism
    String taxonid
    String project_accession
    String description
    File file
  }
  command <<<
    gff3_to_embl \
      ~{organism} \
      ~{taxonid} \
      ~{project_accession} \
      ~{description} \
      ~{file} \
      ~{if defined(authors) then ("--authors " +  '"' + authors + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(publication) then ("--publication " +  '"' + publication + '"') else ""} \
      ~{if defined(genome_type) then ("--genome_type " +  '"' + genome_type + '"') else ""} \
      ~{if defined(classification) then ("--classification " +  '"' + classification + '"') else ""} \
      ~{if defined(output_filename) then ("--output_filename " +  '"' + output_filename + '"') else ""} \
      ~{if defined(locus_tag) then ("--locus_tag " +  '"' + locus_tag + '"') else ""} \
      ~{if defined(translation_table) then ("--translation_table " +  '"' + translation_table + '"') else ""} \
      ~{if defined(chromosome_list) then ("--chromosome_list " +  '"' + chromosome_list + '"') else ""}
  >>>
  parameter_meta {
    authors: "Authors (in the EMBL RA line style)"
    title: "Title of paper (in the EMBL RT line style)"
    publication: "Publication or journal name (in the EMBL RL line\\nstyle)"
    genome_type: "Genome type (linear/circular)"
    classification: "Classification (PROK/UNC/..)"
    output_filename: "Output filename"
    locus_tag: "Overwrite the locus tag in the annotation file"
    translation_table: "Translation table"
    chromosome_list: "Create a chromosome list file, and use the supplied\\nname"
    organism: "Organism"
    taxonid: "Taxon id"
    project_accession: "Accession number for the project"
    description: "Genus species subspecies strain of organism"
    file: "GFF3 filename"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename = "${in_output_filename}"
  }
}