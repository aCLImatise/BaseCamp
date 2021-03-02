version 1.0

task Isoquantpy {
  input {
    Directory? output_folder_created
    String? genedb
    Boolean? complete_genedb
    String? reference
    String? index
    Boolean? clean_start
    Array[String] fast_q
    File? bam_list
    File? fast_q_list
    String? data_type
    String? stranded
    Boolean? has_polya
    Boolean? fl_data
    Boolean? full_help
    Boolean? test
    Int? threads
    Array[String] labels
    File? read_group
    Boolean? sq_anti_output
    Boolean? count_exons
    String? matching_strategy
    String? model_construction_strategy
    String alignments_dot
  }
  command <<<
    isoquant_py \
      ~{alignments_dot} \
      ~{if defined(output_folder_created) then ("--output " +  '"' + output_folder_created + '"') else ""} \
      ~{if defined(genedb) then ("--genedb " +  '"' + genedb + '"') else ""} \
      ~{if (complete_genedb) then "--complete_genedb" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if (clean_start) then "--clean_start" else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(bam_list) then ("--bam_list " +  '"' + bam_list + '"') else ""} \
      ~{if defined(fast_q_list) then ("--fastq_list " +  '"' + fast_q_list + '"') else ""} \
      ~{if defined(data_type) then ("--data_type " +  '"' + data_type + '"') else ""} \
      ~{if defined(stranded) then ("--stranded " +  '"' + stranded + '"') else ""} \
      ~{if (has_polya) then "--has_polya" else ""} \
      ~{if (fl_data) then "--fl_data" else ""} \
      ~{if (full_help) then "--full_help" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(read_group) then ("--read_group " +  '"' + read_group + '"') else ""} \
      ~{if (sq_anti_output) then "--sqanti_output" else ""} \
      ~{if (count_exons) then "--count_exons" else ""} \
      ~{if defined(matching_strategy) then ("--matching_strategy " +  '"' + matching_strategy + '"') else ""} \
      ~{if defined(model_construction_strategy) then ("--model_construction_strategy " +  '"' + model_construction_strategy + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/isoquant:1.1.0--0"
  }
  parameter_meta {
    output_folder_created: "output folder, will be created automatically\\n[default=isoquant_output]"
    genedb: "gene database in gffutils DB format or GTF/GFF format"
    complete_genedb: "use this flag if gene annotation contains transcript\\nand gene metafeatures, e.g. with official annotations,\\nsuch as GENCODE; speeds up gene database conversion"
    reference: "reference genome in FASTA format, should be provided\\nto compute some additional stats and when raw reads\\nare used as an input"
    index: "genome index for specified aligner, should be provided\\nonly when raw reads are used as an input"
    clean_start: "Do not use previously generated index, feature db or"
    fast_q: "input FASTQ file(s), each file will be treated as a\\nseparate sample; reference genome should be provided\\nwhen using raw reads"
    bam_list: "text file with list of BAM files, one file per line,\\nleave empty line between samples"
    fast_q_list: "text file with list of FASTQ files, one file per line,\\nleave empty line between samples"
    data_type: "type of data to process, supported types are:\\nassembly, pacbio_raw, pacbio_ccs, nanopore"
    stranded: "reads strandness type, supported values are: forward,\\nreverse, none"
    has_polya: "set if reads were not polyA trimmed; polyA tails will\\nbe detected and further required for transcript model\\nconstruction"
    fl_data: "reads represent FL transcripts; both ends of the read\\nare considered to be reliable"
    full_help: "show full list of options"
    test: "run IsoQuant on toy dataset"
    threads: "number of threads to use"
    labels: "sample names to be used; input file names are used if\\nnot set"
    read_group: "a way to group feature counts (no grouping by\\ndefault): by BAM file tag (tag:TAG), using additional\\nfile (file:FILE:READ_COL:GROUP_COL:DELIM), using read\\nid (read_id:DELIM)"
    sq_anti_output: "produce SQANTI-like TSV output (requires more time)"
    count_exons: "perform exon and intron counting"
    matching_strategy: "matching strategy to use from most strict to least"
    model_construction_strategy: "transcritp model construnction strategy to use\\n"
    alignments_dot: "--bam BAM [BAM ...]   sorted and indexed BAM file(s), each file will be"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder_created = "${in_output_folder_created}"
  }
}