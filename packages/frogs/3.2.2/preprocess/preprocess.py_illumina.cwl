class: CommandLineTool
id: preprocess.py_illumina.cwl
inputs:
- id: in_merge_software
  doc: Software used to merge paired reads
  type: string?
  inputBinding:
    prefix: --merge-software
- id: in_keep_un_merged
  doc: "In case of uncontiged paired reads, keep unmerged, and\nartificially combined\
    \ them with 100 Ns."
  type: boolean?
  inputBinding:
    prefix: --keep-unmerged
- id: in_min_amplicon_size
  doc: The minimum size for the amplicons (with primers).
  type: long?
  inputBinding:
    prefix: --min-amplicon-size
- id: in_max_amplicon_size
  doc: The maximum size for the amplicons (with primers).
  type: long?
  inputBinding:
    prefix: --max-amplicon-size
- id: in_expected_amplicon_size
  doc: "The expected size for the majority of the amplicons\n(with primers), if using\
    \ Flash as read pair merge\nsoftware."
  type: long?
  inputBinding:
    prefix: --expected-amplicon-size
- id: in_five_prim_primer
  doc: The 5' primer sequence (wildcards are accepted).
  type: long?
  inputBinding:
    prefix: --five-prim-primer
- id: in_three_prim_primer
  doc: The 3' primer sequence (wildcards are accepted).
  type: long?
  inputBinding:
    prefix: --three-prim-primer
- id: in_without_primers
  doc: "Use this option when you use custom sequencing primers\nand these primers\
    \ are the PCR primers. In this case\nthe reads do not contain the PCR primers."
  type: boolean?
  inputBinding:
    prefix: --without-primers
- id: in_r_one_size
  doc: The read1 size.
  type: long?
  inputBinding:
    prefix: --R1-size
- id: in_r_two_size
  doc: The read2 size.
  type: long?
  inputBinding:
    prefix: --R2-size
- id: in_mismatch_rate
  doc: "Maximum mismatch rate in overlap region. [Default:\n0.1; must be expressed\
    \ as decimal, between 0 and 1]"
  type: double?
  inputBinding:
    prefix: --mismatch-rate
- id: in_quality_scale
  doc: "The phred base quality scale, either 33 or 64 if using\nVsearch as read pair\
    \ merge software [Default: 33]"
  type: string?
  inputBinding:
    prefix: --quality-scale
- id: in_already_contig_ed
  doc: "The archive contains 1 file by sample : Reads 1 and\nReads 2 are already contiged\
    \ by pair."
  type: boolean?
  inputBinding:
    prefix: --already-contiged
- id: in_nb_cpus
  doc: 'The maximum number of CPUs used. [Default: 1]'
  type: long?
  inputBinding:
    prefix: --nb-cpus
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_samples_names
  doc: The sample name for each R1/R2-files.
  type: string[]
  inputBinding:
    prefix: --samples-names
- id: in_input_archive
  doc: "The tar file containing R1 file and R2 file for each\nsample."
  type: File?
  inputBinding:
    prefix: --input-archive
- id: in_input_r_one
  doc: 'The R1 sequence file for each sample (format: fastq).'
  type: long[]
  inputBinding:
    prefix: --input-R1
- id: in_input_r_two
  doc: 'The R2 sequence file for each sample (format: fastq).'
  type: long[]
  inputBinding:
    prefix: --input-R2
- id: in_output_de_replicated
  doc: "FASTA file with unique sequences. Each sequence has an\nID ended with the\
    \ number of initial sequences\nrepresented (example : \">a0101;size=10\"). [Default:\n\
    preprocess.fasta]"
  type: long?
  inputBinding:
    prefix: --output-dereplicated
- id: in_output_count
  doc: "TSV file with count by sample for each unique sequence\n(example with 3 samples\
    \ : \"a0101<TAB>5<TAB>8<TAB>0\").\n[Default: preprocess_counts.tsv]"
  type: File?
  inputBinding:
    prefix: --output-count
- id: in_summary
  doc: "The HTML file containing the graphs. [Default:\npreprocess.html]"
  type: File?
  inputBinding:
    prefix: --summary
- id: in_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File?
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
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/frogs:3.2.2--py37_0
cwlVersion: v1.1
baseCommand:
- preprocess.py
- illumina
