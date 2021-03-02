class: CommandLineTool
id: ncbi_genome_download.cwl
inputs:
- id: in_section
  doc: 'NCBI section to download (default: refseq)'
  type: string?
  inputBinding:
    prefix: --section
- id: in_formats
  doc: "Which formats to download (default: genbank).A comma-\nseparated list of formats\
    \ is also possible. For\nexample: \"fasta,assembly-report\". Choose from:\n['genbank',\
    \ 'fasta', 'rm', 'features', 'gff',\n'protein-fasta', 'genpept', 'wgs', 'cds-fasta',\
    \ 'rna-\nfna', 'rna-fasta', 'assembly-report', 'assembly-\nstats', 'all']"
  type: File?
  inputBinding:
    prefix: --formats
- id: in_assembly_levels
  doc: "Assembly levels of genomes to download (default: all).\nA comma-separated\
    \ list of assembly levels is also\npossible. For example: \"complete,chromosome\"\
    . Coose\nfrom: ['all', 'complete', 'chromosome', 'scaffold',\n'contig']"
  type: string?
  inputBinding:
    prefix: --assembly-levels
- id: in_genera
  doc: "Only download sequences of the provided genera. A\ncomma-seperated list of\
    \ genera is also possible. For\nexample: \"Streptomyces coelicolor,Escherichia\
    \ coli\".\n(default: [])"
  type: string?
  inputBinding:
    prefix: --genera
- id: in_genus
  doc: Deprecated alias of --genera
  type: string?
  inputBinding:
    prefix: --genus
- id: in_fuzzy_genus
  doc: "Use a fuzzy search on the organism name instead of an\nexact match."
  type: boolean?
  inputBinding:
    prefix: --fuzzy-genus
- id: in_strains
  doc: "Only download sequences of the given strain(s). A\ncomma-separated list of\
    \ strain names is possible, as\nwell as a path to a filename containing one name\
    \ per\nline."
  type: File?
  inputBinding:
    prefix: --strains
- id: in_species_tax_ids
  doc: "Only download sequences of the provided species NCBI\ntaxonomy IDs. A comma-separated\
    \ list of species taxids\nis also possible. For example: \"52342,12325\".\n(default:\
    \ [])"
  type: long?
  inputBinding:
    prefix: --species-taxids
- id: in_tax_ids
  doc: "Only download sequences of the provided NCBI taxonomy\nIDs. A comma-separated\
    \ list of taxids is also\npossible. For example: \"9606,9685\". (default: [])"
  type: long?
  inputBinding:
    prefix: --taxids
- id: in_assembly_accessions
  doc: "Only download sequences matching the provided NCBI\nassembly accession(s).\
    \ A comma-separated list of\naccessions is possible, as well as a path to a\n\
    filename containing one accession per line."
  type: File?
  inputBinding:
    prefix: --assembly-accessions
- id: in_refseq_categories
  doc: "Only download sequences of the provided refseq\ncategories (default: all)"
  type: string?
  inputBinding:
    prefix: --refseq-categories
- id: in_refseq_category
  doc: Deprecated alias for --refseq-categories
  type: string?
  inputBinding:
    prefix: --refseq-category
- id: in_output_folder
  doc: "Create output hierarchy in specified folder (default:\n/)"
  type: Directory?
  inputBinding:
    prefix: --output-folder
- id: in_flat_output
  doc: "Dump all files right into the output folder without\ncreating any subfolders."
  type: Directory?
  inputBinding:
    prefix: --flat-output
- id: in_human_readable
  doc: "Create links in human-readable hierarchy (might fail\non Windows)"
  type: boolean?
  inputBinding:
    prefix: --human-readable
- id: in_uri
  doc: "NCBI base URI to use (default:\nhttps://ftp.ncbi.nih.gov/genomes)"
  type: string?
  inputBinding:
    prefix: --uri
- id: in_parallel
  doc: 'Run N downloads in parallel (default: 1)'
  type: long?
  inputBinding:
    prefix: --parallel
- id: in_retries
  doc: "Retry download N times when connection to NCBI fails\n(default: 0)"
  type: long?
  inputBinding:
    prefix: --retries
- id: in_metadata_table
  doc: Save tab-delimited file with genome metadata
  type: File?
  inputBinding:
    prefix: --metadata-table
- id: in_dry_run
  doc: "Only check which files to download, don't download\ngenome files."
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_no_cache
  doc: "Don't cache the assembly summary file in\n/root/.cache/ncbi-genome-download."
  type: boolean?
  inputBinding:
    prefix: --no-cache
- id: in_verbose
  doc: increase output verbosity
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: print debugging information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_type_materials
  doc: "Specifies the relation to type material for the\nassembly (default: any).\
    \ \"any\" will include assemblies\nwith no relation to type material value defined,\
    \ \"all\"\nwill download only assemblies with a defined value. A\ncomma-separated\
    \ list of relatons. For example:\n\"reference,synonym\". Choose from: ['any',\
    \ 'all',\n'type', 'reference', 'synonym', 'proxytype',\n'neotype'] .\n"
  type: string?
  inputBinding:
    prefix: --type-materials
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: "Create output hierarchy in specified folder (default:\n/)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
- id: out_flat_output
  doc: "Dump all files right into the output folder without\ncreating any subfolders."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_flat_output)
hints: []
cwlVersion: v1.1
baseCommand:
- ncbi-genome-download
