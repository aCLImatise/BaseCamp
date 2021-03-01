version 1.0

task Ngd {
  input {
    String? section
    File? formats
    String? assembly_levels
    String? genera
    String? genus
    Boolean? fuzzy_genus
    File? strains
    Int? species_tax_ids
    Int? tax_ids
    File? assembly_accessions
    String? refseq_categories
    String? refseq_category
    Directory? output_folder
    Directory? flat_output
    Boolean? human_readable
    String? uri
    Int? parallel
    Int? retries
    File? metadata_table
    Boolean? dry_run
    Boolean? no_cache
    Boolean? verbose
    Boolean? debug
    String? type_materials
  }
  command <<<
    ngd \
      ~{if defined(section) then ("--section " +  '"' + section + '"') else ""} \
      ~{if defined(formats) then ("--formats " +  '"' + formats + '"') else ""} \
      ~{if defined(assembly_levels) then ("--assembly-levels " +  '"' + assembly_levels + '"') else ""} \
      ~{if defined(genera) then ("--genera " +  '"' + genera + '"') else ""} \
      ~{if defined(genus) then ("--genus " +  '"' + genus + '"') else ""} \
      ~{if (fuzzy_genus) then "--fuzzy-genus" else ""} \
      ~{if defined(strains) then ("--strains " +  '"' + strains + '"') else ""} \
      ~{if defined(species_tax_ids) then ("--species-taxids " +  '"' + species_tax_ids + '"') else ""} \
      ~{if defined(tax_ids) then ("--taxids " +  '"' + tax_ids + '"') else ""} \
      ~{if defined(assembly_accessions) then ("--assembly-accessions " +  '"' + assembly_accessions + '"') else ""} \
      ~{if defined(refseq_categories) then ("--refseq-categories " +  '"' + refseq_categories + '"') else ""} \
      ~{if defined(refseq_category) then ("--refseq-category " +  '"' + refseq_category + '"') else ""} \
      ~{if defined(output_folder) then ("--output-folder " +  '"' + output_folder + '"') else ""} \
      ~{if (flat_output) then "--flat-output" else ""} \
      ~{if (human_readable) then "--human-readable" else ""} \
      ~{if defined(uri) then ("--uri " +  '"' + uri + '"') else ""} \
      ~{if defined(parallel) then ("--parallel " +  '"' + parallel + '"') else ""} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""} \
      ~{if defined(metadata_table) then ("--metadata-table " +  '"' + metadata_table + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (no_cache) then "--no-cache" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(type_materials) then ("--type-materials " +  '"' + type_materials + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    section: "NCBI section to download (default: refseq)"
    formats: "Which formats to download (default: genbank).A comma-\\nseparated list of formats is also possible. For\\nexample: \\\"fasta,assembly-report\\\". Choose from:\\n['genbank', 'fasta', 'rm', 'features', 'gff',\\n'protein-fasta', 'genpept', 'wgs', 'cds-fasta', 'rna-\\nfna', 'rna-fasta', 'assembly-report', 'assembly-\\nstats', 'all']"
    assembly_levels: "Assembly levels of genomes to download (default: all).\\nA comma-separated list of assembly levels is also\\npossible. For example: \\\"complete,chromosome\\\". Coose\\nfrom: ['all', 'complete', 'chromosome', 'scaffold',\\n'contig']"
    genera: "Only download sequences of the provided genera. A\\ncomma-seperated list of genera is also possible. For\\nexample: \\\"Streptomyces coelicolor,Escherichia coli\\\".\\n(default: [])"
    genus: "Deprecated alias of --genera"
    fuzzy_genus: "Use a fuzzy search on the organism name instead of an\\nexact match."
    strains: "Only download sequences of the given strain(s). A\\ncomma-separated list of strain names is possible, as\\nwell as a path to a filename containing one name per\\nline."
    species_tax_ids: "Only download sequences of the provided species NCBI\\ntaxonomy IDs. A comma-separated list of species taxids\\nis also possible. For example: \\\"52342,12325\\\".\\n(default: [])"
    tax_ids: "Only download sequences of the provided NCBI taxonomy\\nIDs. A comma-separated list of taxids is also\\npossible. For example: \\\"9606,9685\\\". (default: [])"
    assembly_accessions: "Only download sequences matching the provided NCBI\\nassembly accession(s). A comma-separated list of\\naccessions is possible, as well as a path to a\\nfilename containing one accession per line."
    refseq_categories: "Only download sequences of the provided refseq\\ncategories (default: all)"
    refseq_category: "Deprecated alias for --refseq-categories"
    output_folder: "Create output hierarchy in specified folder (default:\\n/)"
    flat_output: "Dump all files right into the output folder without\\ncreating any subfolders."
    human_readable: "Create links in human-readable hierarchy (might fail\\non Windows)"
    uri: "NCBI base URI to use (default:\\nhttps://ftp.ncbi.nih.gov/genomes)"
    parallel: "Run N downloads in parallel (default: 1)"
    retries: "Retry download N times when connection to NCBI fails\\n(default: 0)"
    metadata_table: "Save tab-delimited file with genome metadata"
    dry_run: "Only check which files to download, don't download\\ngenome files."
    no_cache: "Don't cache the assembly summary file in\\n/root/.cache/ncbi-genome-download."
    verbose: "increase output verbosity"
    debug: "print debugging information"
    type_materials: "Specifies the relation to type material for the\\nassembly (default: any). \\\"any\\\" will include assemblies\\nwith no relation to type material value defined, \\\"all\\\"\\nwill download only assemblies with a defined value. A\\ncomma-separated list of relatons. For example:\\n\\\"reference,synonym\\\". Choose from: ['any', 'all',\\n'type', 'reference', 'synonym', 'proxytype',\\n'neotype'] .\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
    Directory out_flat_output = "${in_flat_output}"
  }
}