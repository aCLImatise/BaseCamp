version 1.0

task ModifyHTseq {
  input {
    File? input_file_bam
    File? gtf_file
    File? output_file
    File? type
    String? mode
    Int? min_quality
    Int? min_len
    Int? maxlen
    Int? exclude_first
    Int? exclude_last
    String? id_type
  }
  command <<<
    ModifyHTseq \
      ~{if defined(input_file_bam) then ("--input " +  '"' + input_file_bam + '"') else ""} \
      ~{if defined(gtf_file) then ("--gtfFile " +  '"' + gtf_file + '"') else ""} \
      ~{if defined(output_file) then ("--outputFile " +  '"' + output_file + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(min_quality) then ("--min-quality " +  '"' + min_quality + '"') else ""} \
      ~{if defined(min_len) then ("--minLen " +  '"' + min_len + '"') else ""} \
      ~{if defined(maxlen) then ("--maxLen " +  '"' + maxlen + '"') else ""} \
      ~{if defined(exclude_first) then ("--exclude-first " +  '"' + exclude_first + '"') else ""} \
      ~{if defined(exclude_last) then ("--exclude-last " +  '"' + exclude_last + '"') else ""} \
      ~{if defined(id_type) then ("--id-type " +  '"' + id_type + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0"
  }
  parameter_meta {
    input_file_bam: "Input file in bam format. default=none"
    gtf_file: "Standard GTF file of a specific species."
    output_file: "File name of output files."
    type: "Feature type (3rd column in GFF file) to be used.\\n[exon or CDS]"
    mode: "mode to handle reads overlapping more than one\\nfeature, the same as htseq-count [union,intersection-\\nstrict,intersection-nonempty]. default=union"
    min_quality: "The minimum quality of base to be required! default=10"
    min_len: "The minimum length of reads to be considered.\\ndefault=25(nt)"
    maxlen: "The max length of reads to be considered.\\ndefault=35(nt)"
    exclude_first: "The number of nucleotides need to be excluded from\\nstart codon. default=45(nt)=15(codon)"
    exclude_last: "The number of nucleotides need to be excluded from\\nstop codon. default=15(nt)=5(codon)"
    id_type: "define the id type users input. the default is gene\\nid, the same as '-i' in htseq-count. default=gene_id\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}