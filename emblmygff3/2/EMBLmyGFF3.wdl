version 1.0

task EMBLmyGFF3 {
  input {
    Boolean? accession
    String? created
    String? data_class
    String? organelle
    String? locus_tag
    Array[String] keyword
    String? classification
    String? molecule_type
    String? output_filename
    String? project_id
    Boolean? quiet
    String? transl_table
    String? species
    String? topology
    Boolean? verbose
    String? taxonomy
    Boolean? gzip
    String? advanced_help
    String? de
    Array[String] author
    String? rc
    String? rg
    String? rl
    String? rt
    String? rx
    String? email
    Boolean? expose_translations
    Boolean? force_unknown_features
    Boolean? force_un_complete_features
    Boolean? interleave_genes
    Boolean? keep_duplicates
    String? locus_numbering_start
    Boolean? no_progress
    Boolean? no_wrap_qualifier
    Boolean? shame
    Boolean? translate
    String? use_attribute_value_as_locus_tag
    Boolean? uncompressed_log
    String? strain
    Boolean? environmental_sample
    String? isolation_source
    String? isolate
    String gff_file
    String fast_a
  }
  command <<<
    EMBLmyGFF3 \
      ~{gff_file} \
      ~{fast_a} \
      ~{true="--accession" false="" accession} \
      ~{if defined(created) then ("--created " +  '"' + created + '"') else ""} \
      ~{if defined(data_class) then ("--data_class " +  '"' + data_class + '"') else ""} \
      ~{if defined(organelle) then ("--organelle " +  '"' + organelle + '"') else ""} \
      ~{if defined(locus_tag) then ("--locus_tag " +  '"' + locus_tag + '"') else ""} \
      ~{if defined(keyword) then ("--keyword " +  '"' + keyword + '"') else ""} \
      ~{if defined(classification) then ("--classification " +  '"' + classification + '"') else ""} \
      ~{if defined(molecule_type) then ("--molecule_type " +  '"' + molecule_type + '"') else ""} \
      ~{if defined(output_filename) then ("--output " +  '"' + output_filename + '"') else ""} \
      ~{if defined(project_id) then ("--project_id " +  '"' + project_id + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(transl_table) then ("--transl_table " +  '"' + transl_table + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(topology) then ("--topology " +  '"' + topology + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{true="--gzip" false="" gzip} \
      ~{if defined(advanced_help) then ("--advanced_help " +  '"' + advanced_help + '"') else ""} \
      ~{if defined(de) then ("--de " +  '"' + de + '"') else ""} \
      ~{if defined(author) then ("--author " +  '"' + author + '"') else ""} \
      ~{if defined(rc) then ("--rc " +  '"' + rc + '"') else ""} \
      ~{if defined(rg) then ("--rg " +  '"' + rg + '"') else ""} \
      ~{if defined(rl) then ("--rl " +  '"' + rl + '"') else ""} \
      ~{if defined(rt) then ("--rt " +  '"' + rt + '"') else ""} \
      ~{if defined(rx) then ("--rx " +  '"' + rx + '"') else ""} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{true="--expose_translations" false="" expose_translations} \
      ~{true="--force_unknown_features" false="" force_unknown_features} \
      ~{true="--force_uncomplete_features" false="" force_un_complete_features} \
      ~{true="--interleave_genes" false="" interleave_genes} \
      ~{true="--keep_duplicates" false="" keep_duplicates} \
      ~{if defined(locus_numbering_start) then ("--locus_numbering_start " +  '"' + locus_numbering_start + '"') else ""} \
      ~{true="--no_progress" false="" no_progress} \
      ~{true="--no_wrap_qualifier" false="" no_wrap_qualifier} \
      ~{true="--shame" false="" shame} \
      ~{true="--translate" false="" translate} \
      ~{if defined(use_attribute_value_as_locus_tag) then ("--use_attribute_value_as_locus_tag " +  '"' + use_attribute_value_as_locus_tag + '"') else ""} \
      ~{true="--uncompressed_log" false="" uncompressed_log} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{true="--environmental_sample" false="" environmental_sample} \
      ~{if defined(isolation_source) then ("--isolation_source " +  '"' + isolation_source + '"') else ""} \
      ~{if defined(isolate) then ("--isolate " +  '"' + isolate + '"') else ""}
  >>>
  parameter_meta {
    accession: "Bolean. Accession number(s) for the entry. Default value: XXX. The proper value is automatically filled up by ENA during the submission by a unique accession number they will assign. The accession number is used to set up the AC line and the first token of the ID line as well. Please visit [this page](https://www.ebi.ac.uk/ena/submit/accession- number-formats) and [this one](https://www.ebi.ac.uk/ena/submit/sequence- submission) to learn more about it. Activating the option will set the Accession number with the fasta sequence identifier."
    created: "Creation time of the original entry. The default value is the date of the day."
    data_class: "Data class of the sample. Default value 'XXX'. This option is used to set up the 5th token of the ID line."
    organelle: "Sample organelle. No default value."
    locus_tag: "Locus tag prefix used to set up the prefix of the locus_tag qualifier. The locus tag has to be registered at ENA prior any submission. More information [here](https://www.ebi.ac.uk/ena/submit/locus-tags)."
    keyword: "Keywords for the entry. No default value."
    classification: "Organism classification e.g 'Eukaryota; Opisthokonta; Metazoa'. The default value is the classification found in the NCBI taxonomy DB from the species/taxid given as --species parameter. If none is found, 'Life' will be the default value."
    molecule_type: "Molecule type of the sample. No default value."
    output_filename: "Output filename."
    project_id: "Project ID. Default is 'XXX' (This is used to set up the PR line)."
    quiet: "Decrease verbosity."
    transl_table: "Translation table. No default. (This is used to set up the translation table qualifier transl_table of the CDS features.) Please visit [NCBI genetic code](https: //www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi) for more information."
    species: "Sample species, formatted as 'Genus species' or taxid. No default. (This is used to set up the OS line.)"
    topology: "Sequence topology. No default. (This is used to set up the Topology that is the 3rd token of the ID line.)"
    verbose: "Increase verbosity."
    taxonomy: "Source taxonomy. Default value 'XXX'. This option is used to set the taxonomic division within ID line (6th token)."
    gzip: "Gzip output file."
    advanced_help: "Display advanced information of the parameter specified or of all parameters if none specified."
    de: "Description. Default value 'XXX'."
    author: "Author for the reference. No default value."
    rc: "Reference Comment. No default value."
    rg: "Reference Group, the working groups/consortia that produced the record. Default value 'XXX'."
    rl: "Reference publishing location. No default value."
    rt: "Reference Title. No default value."
    rx: "Reference cross-reference. No default value"
    email: "Email used to fetch information from NCBI taxonomy database. Default value 'EMBLmyGFF3@tool.org'."
    expose_translations: "Copy feature and attribute mapping files to the working directory. They will be used as mapping files instead of the default internal JSON files. You may modify them as it suits you."
    force_unknown_features: "Force to keep feature types not accepted by EMBL. /!\ Option not suitable for submission purpose."
    force_un_complete_features: "Force to keep features whithout all the mandatory qualifiers. /!\ Option not suitable for submission purpose."
    interleave_genes: "Print gene features with interleaved mRNA and CDS features."
    keep_duplicates: "Do not remove duplicate features during the process. /!\ Option not suitable for submission purpose."
    locus_numbering_start: "Start locus numbering with the provided value."
    no_progress: "Hide conversion progress counter."
    no_wrap_qualifier: "By default there is a line wrapping at 80 characters. The cut is at the world level. Activating this option will avoid the line-wrapping for the qualifiers."
    shame: "Suppress the shameless plug."
    translate: "Include translation in CDS features."
    use_attribute_value_as_locus_tag: "Use the value of the defined attribute as locus_tag."
    uncompressed_log: "Some logs can be compressed for better lisibility, they won't."
    strain: "Strain from which sequence was obtained. May be needed when organism belongs to Bacteria."
    environmental_sample: "Bolean. Identifies sequences derived by direct molecular isolation from a bulk environmental DNA sample with no reliable identification of the source organism. May be needed when organism belongs to Bacteria."
    isolation_source: "Describes the physical, environmental and/or local geographical source of the biological sample from which the sequence was derived. Mandatory when environmental_sample option used."
    isolate: "Individual isolate from which the sequence was obtained. May be needed when organism belongs to Bacteria."
    gff_file: "Input gff-file."
    fast_a: "Input fasta sequence."
  }
}