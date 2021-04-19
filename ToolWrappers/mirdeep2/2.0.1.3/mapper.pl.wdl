version 1.0

task Mapperpl {
  input {
    Boolean? input_file_seqtxt
    Boolean? input_file_qseqtxt
    Boolean? input_file_fasta
    Boolean? input_file_fastq
    Boolean? input_file_config
    Boolean? threeletter_prefix_reads
    Boolean? convert_rna_map
    Boolean? remove_entries_have
    Int? clip_adapter_sequence
    Int? discard_reads_shorter
    Boolean? collapse_reads
    File? map_genome_indexed
    Boolean? map_takes_longer
    Int? read_allowed_map
    File? print_processed_reads
    File? print_read_mappings
    Boolean? remove_directory_temporary
    Boolean? outputs_progress_report
    Boolean? overwrite_existing_files
    Boolean? number_threads_use
  }
  command <<<
    mapper_pl \
      ~{if (input_file_seqtxt) then "-a" else ""} \
      ~{if (input_file_qseqtxt) then "-b" else ""} \
      ~{if (input_file_fasta) then "-c" else ""} \
      ~{if (input_file_fastq) then "-e" else ""} \
      ~{if (input_file_config) then "-d" else ""} \
      ~{if (threeletter_prefix_reads) then "-g" else ""} \
      ~{if (convert_rna_map) then "-i" else ""} \
      ~{if (remove_entries_have) then "-j" else ""} \
      ~{if defined(clip_adapter_sequence) then ("-k " +  '"' + clip_adapter_sequence + '"') else ""} \
      ~{if defined(discard_reads_shorter) then ("-l " +  '"' + discard_reads_shorter + '"') else ""} \
      ~{if (collapse_reads) then "-m" else ""} \
      ~{if defined(map_genome_indexed) then ("-p " +  '"' + map_genome_indexed + '"') else ""} \
      ~{if (map_takes_longer) then "-q" else ""} \
      ~{if defined(read_allowed_map) then ("-r " +  '"' + read_allowed_map + '"') else ""} \
      ~{if defined(print_processed_reads) then ("-s " +  '"' + print_processed_reads + '"') else ""} \
      ~{if defined(print_read_mappings) then ("-t " +  '"' + print_read_mappings + '"') else ""} \
      ~{if (remove_directory_temporary) then "-u" else ""} \
      ~{if (outputs_progress_report) then "-v" else ""} \
      ~{if (overwrite_existing_files) then "-n" else ""} \
      ~{if (number_threads_use) then "-o" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0"
  }
  parameter_meta {
    input_file_seqtxt: "input file is seq.txt format"
    input_file_qseqtxt: "input file is qseq.txt format"
    input_file_fasta: "input file is fasta format"
    input_file_fastq: "input file is fastq format"
    input_file_config: "input file is a config file (see miRDeep2 documentation).\\noptions -a, -b, -c or -e must be given with option -d."
    threeletter_prefix_reads: "three-letter prefix for reads (by default 'seq')"
    convert_rna_map: "convert rna to dna alphabet (to map against genome)"
    remove_entries_have: "remove all entries that have a sequence that contains letters\\nother than a,c,g,t,u,n,A,C,G,T,U,N"
    clip_adapter_sequence: "clip 3' adapter sequence"
    discard_reads_shorter: "discard reads shorter than int nts, default = 18"
    collapse_reads: "collapse reads"
    map_genome_indexed: "map to genome (must be indexed by bowtie-build). The 'genome'\\nstring must be the prefix of the bowtie index. For instance, if\\nthe first indexed file is called 'h_sapiens_37_asm.1.ebwt' then\\nthe prefix is 'h_sapiens_37_asm'."
    map_takes_longer: "map with one mismatch in the seed (mapping takes longer)"
    read_allowed_map: "a read is allowed to map up to this number of positions in the genome\\ndefault is 5"
    print_processed_reads: "print processed reads to this file"
    print_read_mappings: "print read mappings to this file"
    remove_directory_temporary: "do not remove directory with temporary files"
    outputs_progress_report: "outputs progress report"
    overwrite_existing_files: "overwrite existing files"
    number_threads_use: "number of threads to use for bowtie"
  }
  output {
    File out_stdout = stdout()
  }
}