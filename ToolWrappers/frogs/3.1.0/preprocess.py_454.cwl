class: CommandLineTool
id: preprocess.py_454.cwl
inputs:
- id: in_input_archive
  doc: "| --input-R1 R1_FILE [R1_FILE ...]\n--min-amplicon-size MIN_AMPLICON_SIZE\n\
    --max-amplicon-size MAX_AMPLICON_SIZE\n--five-prim-primer FIVE_PRIM_PRIMER\n--three-prim-primer\
    \ THREE_PRIM_PRIMER\n[--fungi {ITS1,ITS2}]\n[-p NB_CPUS] [--debug] [-v]\n[-d DEREPLICATED_FILE]\
    \ [-c COUNT_FILE]\n[-s SUMMARY_FILE] [-l LOG_FILE]"
  type: File
  inputBinding:
    prefix: --input-archive
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
- id: in_input_r_one
  doc: 'The sequence file for each sample (format: fastq).'
  type: long[]
  inputBinding:
    prefix: --input-R1
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
- '454'
