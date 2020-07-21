class: CommandLineTool
id: ../../../motus_profile.cwl
inputs:
- id: input_files_reads_forward
  doc: input file(s) for reads in forward orientation, fastq formatted
  type:
  - File
  inputBinding:
    prefix: -f
- id: input_files_reads_reverse
  doc: input file(s) for reads in reverse orientation, fastq formatted
  type:
  - File
  inputBinding:
    prefix: -r
- id: input_files_reads_mate
  doc: input file(s) for reads without mate, fastq formatted
  type:
  - File
  inputBinding:
    prefix: -s
- id: str_sample_name
  doc: STR          sample name
  type: boolean
  inputBinding:
    prefix: -n
- id: provide_sam_files
  doc: provide sam or bam input file(s)
  type:
  - File
  inputBinding:
    prefix: -i
- id: file_provide_file
  doc: FILE         provide a mgc reads count file
  type: boolean
  inputBinding:
    prefix: -m
- id: db
  doc: provide a database directory
  type: string
  inputBinding:
    prefix: -db
- id: file_file_name
  doc: FILE         output file name [stdout]
  type: boolean
  inputBinding:
    prefix: -o
- id: file_save_result
  doc: FILE         save the result of bwa in bam format (intermediate step) [None]
  type: boolean
  inputBinding:
    prefix: -I
- id: file_save_mgc
  doc: FILE         save the mgc reads count (intermediate step) [None]
  type: boolean
  inputBinding:
    prefix: -M
- id: profile_only_species
  doc: profile only reference species (ref_mOTUs)
  type: boolean
  inputBinding:
    prefix: -e
- id: print_result_counts
  doc: print result as counts instead of relative abundances
  type: boolean
  inputBinding:
    prefix: -c
- id: print_ncbi_i
  doc: print NCBI id
  type: boolean
  inputBinding:
    prefix: -p
- id: print_full_name
  doc: print the full name of the species
  type: boolean
  inputBinding:
    prefix: -u
- id: print_full_taxonomy
  doc: print the full rank taxonomy
  type: boolean
  inputBinding:
    prefix: -q
- id: print_result_biom
  doc: print result in BIOM format
  type: boolean
  inputBinding:
    prefix: -B
- id: str_print_result
  doc: 'STR          print result in CAMI format (BioBoxes format 0.9.1) Values: [precision,
    recall, parenthesis]'
  type: boolean
  inputBinding:
    prefix: -C
- id: print_taxonomy_levels
  doc: print all taxonomy levels together
  type: boolean
  inputBinding:
    prefix: -A
- id: str__level
  doc: 'STR          taxonomic level [mOTU] Values: [kingdom, phylum, class, order,
    family, genus, mOTU]'
  type: boolean
  inputBinding:
    prefix: -k
- id: int_number_marker
  doc: 'INT          number of marker genes cutoff: 1=higher recall, 10=higher precision
    [3]'
  type: boolean
  inputBinding:
    prefix: -g
- id: int_min_length
  doc: INT          min. length of alignment for the reads (number of nucleotides)
    [75]
  type: boolean
  inputBinding:
    prefix: -l
- id: int_number_threads
  doc: INT          number of threads [1]
  type: boolean
  inputBinding:
    prefix: -t
- id: int_error_warning
  doc: 'INT          verbose level: 1=error, 2=warning, 3=message, 4+=debugging [3]'
  type: boolean
  inputBinding:
    prefix: -v
- id: str_type_read
  doc: 'STR          type of read counts [insert.scaled_counts] Values: [base.coverage,
    insert.raw_counts, insert.scaled_counts]'
  type: boolean
  inputBinding:
    prefix: -y
outputs: []
cwlVersion: v1.1
baseCommand:
- motus
- profile
