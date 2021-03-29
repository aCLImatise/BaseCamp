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
    File? output_filename
    String? project_id
    Boolean? quiet
    String? transl_table
    String? species
    String? topology
    Boolean? verbose
    String? taxonomy
    File? gzip
    String? advanced_help
    String? de
    Array[String] author
    String? rc
    String? rg
    String? rl
    String? rt
    String? rx
    Int? email
    Boolean? expose_translations
    Boolean? force_unknown_features
    Boolean? force_un_complete_features
    Boolean? interleave_genes
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
    String features_dot
  }
  command <<<
    EMBLmyGFF3 \
      ~{gff_file} \
      ~{fast_a} \
      ~{features_dot} \
      ~{if (accession) then "--accession" else ""} \
      ~{if defined(created) then ("--created " +  '"' + created + '"') else ""} \
      ~{if defined(data_class) then ("--data_class " +  '"' + data_class + '"') else ""} \
      ~{if defined(organelle) then ("--organelle " +  '"' + organelle + '"') else ""} \
      ~{if defined(locus_tag) then ("--locus_tag " +  '"' + locus_tag + '"') else ""} \
      ~{if defined(keyword) then ("--keyword " +  '"' + keyword + '"') else ""} \
      ~{if defined(classification) then ("--classification " +  '"' + classification + '"') else ""} \
      ~{if defined(molecule_type) then ("--molecule_type " +  '"' + molecule_type + '"') else ""} \
      ~{if defined(output_filename) then ("--output " +  '"' + output_filename + '"') else ""} \
      ~{if defined(project_id) then ("--project_id " +  '"' + project_id + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(transl_table) then ("--transl_table " +  '"' + transl_table + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(topology) then ("--topology " +  '"' + topology + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if defined(advanced_help) then ("--advanced_help " +  '"' + advanced_help + '"') else ""} \
      ~{if defined(de) then ("--de " +  '"' + de + '"') else ""} \
      ~{if defined(author) then ("--author " +  '"' + author + '"') else ""} \
      ~{if defined(rc) then ("--rc " +  '"' + rc + '"') else ""} \
      ~{if defined(rg) then ("--rg " +  '"' + rg + '"') else ""} \
      ~{if defined(rl) then ("--rl " +  '"' + rl + '"') else ""} \
      ~{if defined(rt) then ("--rt " +  '"' + rt + '"') else ""} \
      ~{if defined(rx) then ("--rx " +  '"' + rx + '"') else ""} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if (expose_translations) then "--expose_translations" else ""} \
      ~{if (force_unknown_features) then "--force_unknown_features" else ""} \
      ~{if (force_un_complete_features) then "--force_uncomplete_features" else ""} \
      ~{if (interleave_genes) then "--interleave_genes" else ""} \
      ~{if defined(locus_numbering_start) then ("--locus_numbering_start " +  '"' + locus_numbering_start + '"') else ""} \
      ~{if (no_progress) then "--no_progress" else ""} \
      ~{if (no_wrap_qualifier) then "--no_wrap_qualifier" else ""} \
      ~{if (shame) then "--shame" else ""} \
      ~{if (translate) then "--translate" else ""} \
      ~{if defined(use_attribute_value_as_locus_tag) then ("--use_attribute_value_as_locus_tag " +  '"' + use_attribute_value_as_locus_tag + '"') else ""} \
      ~{if (uncompressed_log) then "--uncompressed_log" else ""} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{if (environmental_sample) then "--environmental_sample" else ""} \
      ~{if defined(isolation_source) then ("--isolation_source " +  '"' + isolation_source + '"') else ""} \
      ~{if defined(isolate) then ("--isolate " +  '"' + isolate + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/emblmygff3:2.1--py_0"
  }
  parameter_meta {
    accession: "Bolean. Accession number(s) for the entry. Default\\nvalue: XXX. The proper value is automatically filled\\nup by ENA during the submission by a unique accession\\nnumber they will assign. The accession number is used\\nto set up the AC line and the first token of the ID\\nline as well. Please visit [this\\npage](https://www.ebi.ac.uk/ena/submit/accession-\\nnumber-formats) and [this\\none](https://www.ebi.ac.uk/ena/submit/sequence-\\nsubmission) to learn more about it. Activating the\\noption will set the Accession number with the fasta\\nsequence identifier."
    created: "Creation time of the original entry. The default value\\nis the date of the day."
    data_class: "Data class of the sample. Default value 'XXX'. This\\noption is used to set up the 5th token of the ID line."
    organelle: "Sample organelle. No default value."
    locus_tag: "Locus tag prefix used to set up the prefix of the\\nlocus_tag qualifier. The locus tag has to be\\nregistered at ENA prior any submission. More\\ninformation\\n[here](https://www.ebi.ac.uk/ena/submit/locus-tags)."
    keyword: "Keywords for the entry. No default value."
    classification: "Organism classification e.g 'Eukaryota; Opisthokonta;\\nMetazoa'. The default value is the classification\\nfound in the NCBI taxonomy DB from the species/taxid\\ngiven as --species parameter. If none is found, 'Life'\\nwill be the default value."
    molecule_type: "Molecule type of the sample. No default value."
    output_filename: "Output filename."
    project_id: "Project ID. Default is 'XXX' (This is used to set up\\nthe PR line)."
    quiet: "Decrease verbosity."
    transl_table: "Translation table. No default. (This is used to set up\\nthe translation table qualifier transl_table of the\\nCDS features.) Please visit [NCBI genetic code](https:\\n//www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi)\\nfor more information."
    species: "Sample species, formatted as 'Genus species' or taxid.\\nNo default. (This is used to set up the OS line.)"
    topology: "Sequence topology. No default. (This is used to set up\\nthe Topology that is the 3rd token of the ID line.)"
    verbose: "Increase verbosity."
    taxonomy: "Source taxonomy. Default value 'XXX'. This option is\\nused to set the taxonomic division within ID line (6th\\ntoken)."
    gzip: "Gzip output file."
    advanced_help: "Display advanced information of the parameter\\nspecified or of all parameters if none specified."
    de: "Description. Default value 'XXX'."
    author: "Author for the reference. No default value."
    rc: "Reference Comment. No default value."
    rg: "Reference Group, the working groups/consortia that\\nproduced the record. Default value 'XXX'."
    rl: "Reference publishing location. No default value."
    rt: "Reference Title. No default value."
    rx: "Reference cross-reference. No default value"
    email: "Email used to fetch information from NCBI taxonomy\\ndatabase. Default value 'EMBLmyGFF3@tool.org'."
    expose_translations: "Copy feature and attribute mapping files to the\\nworking directory. They will be used as mapping files\\ninstead of the default internal JSON files. You may\\nmodify them as it suits you."
    force_unknown_features: "Force to keep feature types not accepted by EMBL. /!\\\\nOption not suitable for submission purpose."
    force_un_complete_features: "Force to keep features whithout all the mandatory\\nqualifiers. /!\\ Option not suitable for submission\\npurpose."
    interleave_genes: "Print gene features with interleaved mRNA and CDS"
    locus_numbering_start: "Start locus numbering with the provided value."
    no_progress: "Hide conversion progress counter."
    no_wrap_qualifier: "By default there is a line wrapping at 80 characters.\\nThe cut is at the world level. Activating this option\\nwill avoid the line-wrapping for the qualifiers."
    shame: "Suppress the shameless plug."
    translate: "Include translation in CDS features."
    use_attribute_value_as_locus_tag: "Use the value of the defined attribute as locus_tag."
    uncompressed_log: "Some logs can be compressed for better lisibility,\\nthey won't."
    strain: "Strain from which sequence was obtained. May be needed\\nwhen organism belongs to Bacteria."
    environmental_sample: "Bolean. Identifies sequences derived by direct\\nmolecular isolation from a bulk environmental DNA\\nsample with no reliable identification of the source\\norganism. May be needed when organism belongs to\\nBacteria."
    isolation_source: "Describes the physical, environmental and/or local\\ngeographical source of the biological sample from\\nwhich the sequence was derived. Mandatory when\\nenvironmental_sample option used."
    isolate: "Individual isolate from which the sequence was\\nobtained. May be needed when organism belongs to\\nBacteria.\\n"
    gff_file: "Input gff-file."
    fast_a: "Input fasta sequence."
    features_dot: "--keep_duplicates     Do not remove duplicate features during the process."
  }
  output {
    File out_stdout = stdout()
    File out_output_filename = "${in_output_filename}"
    File out_gzip = "${in_gzip}"
  }
}