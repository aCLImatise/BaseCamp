version 1.0

task NcbiGenomeDownload {
  input {
    String? section
    File? format
    String? assembly_level
    String? genus
    Boolean? fuzzy_genus
    String? species_taxid
    String? taxid
    String? assembly_accessions
    String? refseq_category
    String? output_folder
    Boolean? flat_output
    Boolean? human_readable
    String? uri
    String? parallel
    String? retries
    String? metadata_table
    Boolean? dry_run
    Boolean? no_cache
    Boolean? verbose
    Boolean? debug
    String? type_material
    String group
  }
  command <<<
    ncbi-genome-download \
      ~{group} \
      ~{if defined(section) then ("--section " +  '"' + section + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(assembly_level) then ("--assembly-level " +  '"' + assembly_level + '"') else ""} \
      ~{if defined(genus) then ("--genus " +  '"' + genus + '"') else ""} \
      ~{true="--fuzzy-genus" false="" fuzzy_genus} \
      ~{if defined(species_taxid) then ("--species-taxid " +  '"' + species_taxid + '"') else ""} \
      ~{if defined(taxid) then ("--taxid " +  '"' + taxid + '"') else ""} \
      ~{if defined(assembly_accessions) then ("--assembly-accessions " +  '"' + assembly_accessions + '"') else ""} \
      ~{if defined(refseq_category) then ("--refseq-category " +  '"' + refseq_category + '"') else ""} \
      ~{if defined(output_folder) then ("--output-folder " +  '"' + output_folder + '"') else ""} \
      ~{true="--flat-output" false="" flat_output} \
      ~{true="--human-readable" false="" human_readable} \
      ~{if defined(uri) then ("--uri " +  '"' + uri + '"') else ""} \
      ~{if defined(parallel) then ("--parallel " +  '"' + parallel + '"') else ""} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""} \
      ~{if defined(metadata_table) then ("--metadata-table " +  '"' + metadata_table + '"') else ""} \
      ~{true="--dry-run" false="" dry_run} \
      ~{true="--no-cache" false="" no_cache} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug} \
      ~{if defined(type_material) then ("--type-material " +  '"' + type_material + '"') else ""}
  >>>
  parameter_meta {
    section: "NCBI section to download (default: refseq)"
    format: "Which format to download (default: genbank).A comma- separated list of formats is also possible. For example: \"fasta,assembly-report\". Choose from: ['genbank', 'fasta', 'rm', 'features', 'gff', 'protein-fasta', 'genpept', 'wgs', 'cds-fasta', 'rna- fna', 'rna-fasta', 'assembly-report', 'assembly- stats', 'all']"
    assembly_level: "Assembly level of genomes to download (default: all). A comma-separated list of assembly levels is also possible. For example: \"complete,chromosome\". Coose from: ['all', 'complete', 'chromosome', 'scaffold', 'contig']"
    genus: "Only download sequences of the provided genus. A comma-seperated list of genera is also possible. For example: \"Streptomyces coelicolor,Escherichia coli\". (default: [])"
    fuzzy_genus: "Use a fuzzy search on the organism name instead of an exact match."
    species_taxid: "Only download sequences of the provided species NCBI taxonomy ID. A comma-separated list of species taxids is also possible. For example: \"52342,12325\". (default: [])"
    taxid: "Only download sequences of the provided NCBI taxonomy ID. A comma-separated list of taxids is also possible. For example: \"9606,9685\". (default: [])"
    assembly_accessions: "Only download sequences matching the provided NCBI assembly accession(s). A comma-separated list of accessions is possible, as well as a path to a filename containing one accession per line."
    refseq_category: "Only download sequences of the provided refseq category (default: all)"
    output_folder: "Create output hierarchy in specified folder (default: /tmp/tmpccjmanvs)"
    flat_output: "Dump all files right into the output folder without creating any subfolders."
    human_readable: "Create links in human-readable hierarchy (might fail on Windows)"
    uri: "NCBI base URI to use (default: https://ftp.ncbi.nih.gov/genomes)"
    parallel: "Run N downloads in parallel (default: 1)"
    retries: "Retry download N times when connection to NCBI fails (default: 0)"
    metadata_table: "Save tab-delimited file with genome metadata"
    dry_run: "Only check which files to download, don't download genome files."
    no_cache: "Don't cache the assembly summary file in /home/ubuntu/.cache/ncbi-genome-download."
    verbose: "increase output verbosity"
    debug: "print debugging information"
    type_material: "Specifies the relation to type material for the assembly (default: any). \"any\" will include assemblies with no relation to type material value defined, \"all\" will download only assemblies with a defined value. A comma-separated list of relatons. For example: \"reference,synonym\". Choose from: ['any', 'all', 'type', 'reference', 'synonym', 'proxytype', 'neotype'] ."
    group: "The NCBI taxonomic group to download (default: all). A comma-separated list of taxonomic groups is also possible. For example: \"bacteria,viral\"Choose from: ['all', 'archaea', 'bacteria', 'fungi', 'invertebrate', 'metagenomes', 'plant', 'protozoa', 'vertebrate_mammalian', 'vertebrate_other', 'viral']"
  }
}