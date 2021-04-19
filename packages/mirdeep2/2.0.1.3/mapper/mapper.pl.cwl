class: CommandLineTool
id: mapper.pl.cwl
inputs:
- id: in_input_file_seqtxt
  doc: input file is seq.txt format
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_input_file_qseqtxt
  doc: input file is qseq.txt format
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_input_file_fasta
  doc: input file is fasta format
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_input_file_fastq
  doc: input file is fastq format
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_input_file_config
  doc: "input file is a config file (see miRDeep2 documentation).\noptions -a, -b,\
    \ -c or -e must be given with option -d."
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_threeletter_prefix_reads
  doc: three-letter prefix for reads (by default 'seq')
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_convert_rna_map
  doc: convert rna to dna alphabet (to map against genome)
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_remove_entries_have
  doc: "remove all entries that have a sequence that contains letters\nother than\
    \ a,c,g,t,u,n,A,C,G,T,U,N"
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_clip_adapter_sequence
  doc: clip 3' adapter sequence
  type: long?
  inputBinding:
    prefix: -k
- id: in_discard_reads_shorter
  doc: discard reads shorter than int nts, default = 18
  type: long?
  inputBinding:
    prefix: -l
- id: in_collapse_reads
  doc: collapse reads
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_map_genome_indexed
  doc: "map to genome (must be indexed by bowtie-build). The 'genome'\nstring must\
    \ be the prefix of the bowtie index. For instance, if\nthe first indexed file\
    \ is called 'h_sapiens_37_asm.1.ebwt' then\nthe prefix is 'h_sapiens_37_asm'."
  type: File?
  inputBinding:
    prefix: -p
- id: in_map_takes_longer
  doc: map with one mismatch in the seed (mapping takes longer)
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_read_allowed_map
  doc: "a read is allowed to map up to this number of positions in the genome\ndefault\
    \ is 5"
  type: long?
  inputBinding:
    prefix: -r
- id: in_print_processed_reads
  doc: print processed reads to this file
  type: File?
  inputBinding:
    prefix: -s
- id: in_print_read_mappings
  doc: print read mappings to this file
  type: File?
  inputBinding:
    prefix: -t
- id: in_remove_directory_temporary
  doc: do not remove directory with temporary files
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_outputs_progress_report
  doc: outputs progress report
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_overwrite_existing_files
  doc: overwrite existing files
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_number_threads_use
  doc: number of threads to use for bowtie
  type: boolean?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- mapper.pl
