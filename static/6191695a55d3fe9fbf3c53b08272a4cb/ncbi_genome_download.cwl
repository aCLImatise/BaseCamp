class: CommandLineTool
id: ncbi_genome_download.cwl
inputs:
- id: group
  doc: "The NCBI taxonomic group to download (default: all). A comma-separated list\
    \ of taxonomic groups is also possible. For example: \"bacteria,viral\"Choose\
    \ from: ['all', 'archaea', 'bacteria', 'fungi', 'invertebrate', 'metagenomes',\
    \ 'plant', 'protozoa', 'vertebrate_mammalian', 'vertebrate_other', 'viral']"
  type: string
  inputBinding:
    position: 0
- id: section
  doc: 'NCBI section to download (default: refseq)'
  type: string
  inputBinding:
    prefix: --section
- id: format
  doc: "Which format to download (default: genbank).A comma- separated list of formats\
    \ is also possible. For example: \"fasta,assembly-report\". Choose from: ['genbank',\
    \ 'fasta', 'rm', 'features', 'gff', 'protein-fasta', 'genpept', 'wgs', 'cds-fasta',\
    \ 'rna- fna', 'rna-fasta', 'assembly-report', 'assembly- stats', 'all']"
  type: File
  inputBinding:
    prefix: --format
- id: assembly_level
  doc: "Assembly level of genomes to download (default: all). A comma-separated list\
    \ of assembly levels is also possible. For example: \"complete,chromosome\". Coose\
    \ from: ['all', 'complete', 'chromosome', 'scaffold', 'contig']"
  type: string
  inputBinding:
    prefix: --assembly-level
- id: genus
  doc: 'Only download sequences of the provided genus. A comma-seperated list of genera
    is also possible. For example: "Streptomyces coelicolor,Escherichia coli". (default:
    [])'
  type: string
  inputBinding:
    prefix: --genus
- id: fuzzy_genus
  doc: Use a fuzzy search on the organism name instead of an exact match.
  type: boolean
  inputBinding:
    prefix: --fuzzy-genus
- id: species_taxid
  doc: 'Only download sequences of the provided species NCBI taxonomy ID. A comma-separated
    list of species taxids is also possible. For example: "52342,12325". (default:
    [])'
  type: string
  inputBinding:
    prefix: --species-taxid
- id: taxid
  doc: 'Only download sequences of the provided NCBI taxonomy ID. A comma-separated
    list of taxids is also possible. For example: "9606,9685". (default: [])'
  type: string
  inputBinding:
    prefix: --taxid
- id: assembly_accessions
  doc: Only download sequences matching the provided NCBI assembly accession(s). A
    comma-separated list of accessions is possible, as well as a path to a filename
    containing one accession per line.
  type: string
  inputBinding:
    prefix: --assembly-accessions
- id: refseq_category
  doc: 'Only download sequences of the provided refseq category (default: all)'
  type: string
  inputBinding:
    prefix: --refseq-category
- id: output_folder
  doc: 'Create output hierarchy in specified folder (default: /tmp/tmp0zu1tld5)'
  type: string
  inputBinding:
    prefix: --output-folder
- id: flat_output
  doc: Dump all files right into the output folder without creating any subfolders.
  type: boolean
  inputBinding:
    prefix: --flat-output
- id: human_readable
  doc: Create links in human-readable hierarchy (might fail on Windows)
  type: boolean
  inputBinding:
    prefix: --human-readable
- id: uri
  doc: 'NCBI base URI to use (default: https://ftp.ncbi.nih.gov/genomes)'
  type: string
  inputBinding:
    prefix: --uri
- id: parallel
  doc: 'Run N downloads in parallel (default: 1)'
  type: string
  inputBinding:
    prefix: --parallel
- id: retries
  doc: 'Retry download N times when connection to NCBI fails (default: 0)'
  type: string
  inputBinding:
    prefix: --retries
- id: metadata_table
  doc: Save tab-delimited file with genome metadata
  type: string
  inputBinding:
    prefix: --metadata-table
- id: dry_run
  doc: Only check which files to download, don't download genome files.
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: no_cache
  doc: Don't cache the assembly summary file in /home/ubuntu/.cache/ncbi-genome-download.
  type: boolean
  inputBinding:
    prefix: --no-cache
- id: verbose
  doc: increase output verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: print debugging information
  type: boolean
  inputBinding:
    prefix: --debug
- id: type_material
  doc: "Specifies the relation to type material for the assembly (default: any). \"\
    any\" will include assemblies with no relation to type material value defined,\
    \ \"all\" will download only assemblies with a defined value. A comma-separated\
    \ list of relatons. For example: \"reference,synonym\". Choose from: ['any', 'all',\
    \ 'type', 'reference', 'synonym', 'proxytype', 'neotype'] ."
  type: string
  inputBinding:
    prefix: --type-material
outputs: []
cwlVersion: v1.1
baseCommand:
- ncbi-genome-download
