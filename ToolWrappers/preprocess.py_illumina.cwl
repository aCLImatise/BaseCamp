class: CommandLineTool
id: preprocess.py_illumina.cwl
inputs:
- id: in_input_r_one
  doc: "--already-contiged | --input-R2 R2_FILE [R2_FILE ...] --R1-size R1_SIZE --R2-size\
    \ R2_SIZE [--mismatch-rate RATE ] [--quality-scale SCALE ] [--merge-software {vsearch,flash,pear}\
    \ [--expected-amplicon-size]] [--keep-unmerged]\n--min-amplicon-size MIN_AMPLICON_SIZE\n\
    --max-amplicon-size MAX_AMPLICON_SIZE\n--without-primers | --five-prim-primer\
    \ FIVE_PRIM_PRIMER --three-prim-primer THREE_PRIM_PRIMER\n[--fungi {ITS1,ITS2}]\
    \ [--keep-unmerged]\n[--samples-names SAMPLE_NAME [SAMPLE_NAME ...]]\n[-p NB_CPUS]\
    \ [--debug] [-v]\n[-d DEREPLICATED_FILE] [-c COUNT_FILE]\n[-s SUMMARY_FILE] [-l\
    \ LOG_FILE]"
  type: File[]
  inputBinding:
    prefix: --input-R1
- id: in_input_archive
  doc: "--already-contiged | --R1-size R1_SIZE --R2-size R2_SIZE [--mismatch-rate\
    \ RATE ] [--quality-scale SCALE ] [--merge-software {vsearch,flash,pear} [--expected-amplicon-size]\
    \ ] [--keep-unmerged]\n--min-amplicon-size MIN_AMPLICON_SIZE\n--max-amplicon-size\
    \ MAX_AMPLICON_SIZE\n--without-primers | --five-prim-primer FIVE_PRIM_PRIMER --three-prim-primer\
    \ THREE_PRIM_PRIMER\n[--fungi {ITS1,ITS2}]\n[-p NB_CPUS] [--debug] [-v]\n[-d DEREPLICATED_FILE]\
    \ [-c COUNT_FILE] [-c COUNT_FILE] [--artComb-output-dereplicated ART_DEREPLICATED_FILE]\
    \ [--artComb-output-count ART_COUNT_FILE]\n[-s SUMMARY_FILE] [-l LOG_FILE]"
  type: File
  inputBinding:
    prefix: --input-archive
- id: in_merge_software
  doc: Software used to merge paired reads
  type: string
  inputBinding:
    prefix: --merge-software
- id: in_keep_un_merged
  doc: "In case of uncontiged paired reads, keep unmerged, and\nartificially combined\
    \ them with 100 Ns."
  type: boolean
  inputBinding:
    prefix: --keep-unmerged
- id: in_min_amplicon_size
  doc: The minimum size for the amplicons (with primers).
  type: long
  inputBinding:
    prefix: --min-amplicon-size
- id: in_max_amplicon_size
  doc: The maximum size for the amplicons (with primers).
  type: long
  inputBinding:
    prefix: --max-amplicon-size
- id: in_expected_amplicon_size
  doc: "The expected size for the majority of the amplicons\n(with primers), if using\
    \ Flash as read pair merge\nsoftware."
  type: long
  inputBinding:
    prefix: --expected-amplicon-size
- id: in_five_prim_primer
  doc: The 5' primer sequence (wildcards are accepted).
  type: long
  inputBinding:
    prefix: --five-prim-primer
- id: in_three_prim_primer
  doc: The 3' primer sequence (wildcards are accepted).
  type: long
  inputBinding:
    prefix: --three-prim-primer
- id: in_without_primers
  doc: "Use this option when you use custom sequencing primers\nand these primers\
    \ are the PCR primers. In this case\nthe reads do not contain the PCR primers."
  type: boolean
  inputBinding:
    prefix: --without-primers
- id: in_r_one_size
  doc: The read1 size.
  type: long
  inputBinding:
    prefix: --R1-size
- id: in_r_two_size
  doc: The read2 size.
  type: long
  inputBinding:
    prefix: --R2-size
- id: in_mismatch_rate
  doc: 'Maxi mismatch rate in overlap region. [Default: 0.1]'
  type: double
  inputBinding:
    prefix: --mismatch-rate
- id: in_quality_scale
  doc: "The phred base quality scale, either 33 or 64 if using\nVsearch as read pair\
    \ merge software [Default: 33]"
  type: string
  inputBinding:
    prefix: --quality-scale
- id: in_already_contig_ed
  doc: "The archive contains 1 file by sample : Reads 1 and\nReads 2 are already contiged\
    \ by pair."
  type: boolean
  inputBinding:
    prefix: --already-contiged
- id: in_nb_cpus
  doc: 'The maximum number of CPUs used. [Default: 1]'
  type: long
  inputBinding:
    prefix: --nb-cpus
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_samples_names
  doc: The sample name for each R1/R2-files.
  type: string[]
  inputBinding:
    prefix: --samples-names
- id: in_input_r_two
  doc: 'The R2 sequence file for each sample (format: fastq).'
  type: long[]
  inputBinding:
    prefix: --input-R2
- id: in_output_de_replicated
  doc: "Fasta file with unique sequences. Each sequence has an\nID ended with the\
    \ number of initial sequences\nrepresented (example : \">a0101;size=10\"). [Default:\n\
    dereplication.fasta]"
  type: long
  inputBinding:
    prefix: --output-dereplicated
- id: in_output_count
  doc: "TSV file with count by sample for each unique sequence\n(example with 3 samples\
    \ : \"a0101<TAB>5<TAB>8<TAB>0\").\n[Default: count.tsv]"
  type: File
  inputBinding:
    prefix: --output-count
- id: in_summary
  doc: "HTML file with summary of filters results. [Default:\nsummary.html]"
  type: File
  inputBinding:
    prefix: --summary
- id: in_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File
  inputBinding:
    prefix: --log-file
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_samples
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_archive
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_log_file)
cwlVersion: v1.1
baseCommand:
- preprocess.py
- illumina
