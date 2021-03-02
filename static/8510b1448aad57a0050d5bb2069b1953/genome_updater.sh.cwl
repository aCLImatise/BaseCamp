class: CommandLineTool
id: genome_updater.sh.cwl
inputs:
- id: in_default_refseq
  doc: "[genbank, refseq]\nDefault: refseq"
  type: string?
  inputBinding:
    prefix: -d
- id: in_category_default_all
  doc: "Category [all, reference genome, representative genome, na]\nDefault: all"
  type: string?
  inputBinding:
    prefix: -c
- id: in_level_default_all
  doc: "level [all, Complete Genome, Chromosome, Scaffold, Contig]\nDefault: all"
  type: string?
  inputBinding:
    prefix: -l
- id: in_formats_check_ftpftpncbinlmnihgovgenomesallreadmetxt
  doc: "formats [genomic.fna.gz,assembly_report.txt, ...]\ncheck ftp://ftp.ncbi.nlm.nih.gov/genomes/all/README.txt\
    \ for all file formats\nDefault: assembly_report.txt"
  type: File?
  inputBinding:
    prefix: -f
- id: in_top_references_download
  doc: "of top references for each species/taxids to download [\"\", species:INT,\
    \ taxids:INT]. Example: \"species:3\". Selection is based on 1) RefSeq Category,\
    \ 2) Assembly level, 3) Relation to type material and 4) Date (most recent first)\n\
    Default: \"\""
  type: long?
  inputBinding:
    prefix: -j
- id: in_data_downloaded_updated
  doc: ', no data is downloaded or updated - just checks for available sequences and
    changes'
  type: string?
  inputBinding:
    prefix: -k
- id: in_failed_downloads_data
  doc: failed downloads or any incomplete data from a previous run, keep current version
  type: string?
  inputBinding:
    prefix: -i
- id: in_deletion_extra_found
  doc: the deletion of extra files if some are found in the repository folder
  type: Directory?
  inputBinding:
    prefix: -x
- id: in_updated_assembly_accessions
  doc: of updated assembly accessions (Added/Removed, assembly accession, url)
  type: string?
  inputBinding:
    prefix: -u
- id: in_updated_sequence_accessions
  doc: of updated sequence accessions (Added/Removed, assembly accession, genbank
    accession, refseq accession, sequence length, taxid). Only available when file
    assembly_report.txt selected and successfully downloaded
  type: long?
  inputBinding:
    prefix: -r
- id: in_list_urls_downloaded
  doc: list of URLs for downloaded and failed files
  type: string?
  inputBinding:
    prefix: -p
- id: in_current_version_taxdumptargz
  doc: the current version of the Taxonomy database (taxdump.tar.gz)
  type: string?
  inputBinding:
    prefix: -a
- id: in_output_directorydefault_tmpxxxxxxxxxx
  doc: "output directory\nDefault: ./tmp.XXXXXXXXXX"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_labeldefault_timestamp_yyyymmddhhmmss
  doc: "label\nDefault: current timestamp (YYYY-MM-DD_HH-MM-SS)"
  type: string?
  inputBinding:
    prefix: -b
- id: in_file_recover_data
  doc: "\"assembly_summary.txt\" file to recover data from\nDefault: \"\""
  type: File?
  inputBinding:
    prefix: -e
- id: in_default
  doc: 'Default: 1'
  type: long?
  inputBinding:
    prefix: -t
- id: in_md_downloaded_files
  doc: MD5 for downloaded files
  type: long?
  inputBinding:
    prefix: -m
- id: in_output
  doc: output
  type: string?
  inputBinding:
    prefix: -s
- id: in_output_download_progress
  doc: output with download progress (%) and download version at the end
  type: string?
  inputBinding:
    prefix: -w
- id: in_exit_status_exit
  doc: "exit status. Exit Code = 1 if more than N files failed to download (integer\
    \ for file number, float for percentage, 0 -> off)\nDefault: 0"
  type: double?
  inputBinding:
    prefix: -n
- id: in_print_debug_information
  doc: print debug information and exit
  type: string?
  inputBinding:
    prefix: -D
- id: in_v_zero_dot_two_dot_four
  doc: '-g Organism group (one or more comma-separated entries) [archaea, bacteria,
    fungi, human (also contained in vertebrate_mammalian), invertebrate, metagenomes
    (genbank), other (synthetic genomes - only genbank), plant, protozoa, vertebrate_mammalian,
    vertebrate_other, viral (only refseq)]. Example: archaea,bacteria'
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directorydefault_tmpxxxxxxxxxx
  doc: "output directory\nDefault: ./tmp.XXXXXXXXXX"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directorydefault_tmpxxxxxxxxxx)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/genome_updater:0.2.4--0
cwlVersion: v1.1
baseCommand:
- genome_updater.sh
