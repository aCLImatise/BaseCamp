class: CommandLineTool
id: motus_profile.cwl
inputs:
- id: in_input_files_reads_forward
  doc: input file(s) for reads in forward orientation, fastq formatted
  type:
  - File
  inputBinding:
    prefix: -f
- id: in_input_files_reads_reverse
  doc: input file(s) for reads in reverse orientation, fastq formatted
  type:
  - File
  inputBinding:
    prefix: -r
- id: in_input_files_reads_mate
  doc: input file(s) for reads without mate, fastq formatted
  type:
  - File
  inputBinding:
    prefix: -s
- id: in_sample_name
  doc: sample name
  type: string
  inputBinding:
    prefix: -n
- id: in_provide_sam_bam
  doc: provide sam or bam input file(s)
  type:
  - File
  inputBinding:
    prefix: -i
- id: in_provide_mgc_file
  doc: provide a mgc reads count file
  type: File
  inputBinding:
    prefix: -m
- id: in_output_file_name
  doc: output file name [stdout]
  type: File
  inputBinding:
    prefix: -o
- id: in_save_result_bwa
  doc: save the result of bwa in bam format (intermediate step) [None]
  type: File
  inputBinding:
    prefix: -I
- id: in_save_mgc_reads
  doc: save the mgc reads count (intermediate step) [None]
  type: File
  inputBinding:
    prefix: -M
- id: in_profile_only_species
  doc: profile only reference species (ref_mOTUs)
  type: boolean
  inputBinding:
    prefix: -e
- id: in_print_result_counts
  doc: print result as counts instead of relative abundances
  type: boolean
  inputBinding:
    prefix: -c
- id: in_print_ncbi_i
  doc: print NCBI id
  type: boolean
  inputBinding:
    prefix: -p
- id: in_print_full_name
  doc: print the full name of the species
  type: boolean
  inputBinding:
    prefix: -u
- id: in_print_full_taxonomy
  doc: print the full rank taxonomy
  type: boolean
  inputBinding:
    prefix: -q
- id: in_print_result_biom
  doc: print result in BIOM format
  type: boolean
  inputBinding:
    prefix: -B
- id: in_print_result_cami
  doc: "print result in CAMI format (BioBoxes format 0.9.1)\nValues: [precision, recall,\
    \ parenthesis]"
  type: double
  inputBinding:
    prefix: -C
- id: in_taxonomic_level_values
  doc: "taxonomic level [mOTU]\nValues: [kingdom, phylum, class, order, family, genus,\
    \ mOTU]"
  type: string
  inputBinding:
    prefix: -k
- id: in_number_marker_genes
  doc: 'number of marker genes cutoff: 1=higher recall, 10=higher precision [3]'
  type: long
  inputBinding:
    prefix: -g
- id: in_min_length_alignment
  doc: min. length of alignment for the reads (number of nucleotides) [75]
  type: long
  inputBinding:
    prefix: -l
- id: in_number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: in_verbose_level_error
  doc: 'verbose level: 1=error, 2=warning, 3=message, 4+=debugging [3]'
  type: long
  inputBinding:
    prefix: -v
- id: in_type_read_counts
  doc: "type of read counts [insert.scaled_counts]\nValues: [base.coverage, insert.raw_counts,\
    \ insert.scaled_counts]\n"
  type: string
  inputBinding:
    prefix: -y
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: output file name [stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_name)
cwlVersion: v1.1
baseCommand:
- motus
- profile
