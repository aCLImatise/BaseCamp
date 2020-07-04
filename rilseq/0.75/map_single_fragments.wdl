version 1.0

task MapSingleFragments.py {
  input {
    Array[String] fast_q_one
    Boolean? list_second_read
    String? genes_gff
    Boolean? reverse_complement
    String? feature
    String? identifier
    String? overlap
    String? allowed_mismatches
    String? out_head
    String? dir_out
    String? bwa_exec
    String? sam_tools_cmd
    String? params_aln
    String? sampe_params
    String? sam_se_params
    Boolean? create_wig
    String genome_fast_a
  }
  command <<<
    map_single_fragments.py \
      ~{genome_fast_a} \
      ~{if defined(fast_q_one) then ("--fastq_1 " +  '"' + fast_q_one + '"') else ""} \
      ~{true="-2" false="" list_second_read} \
      ~{if defined(genes_gff) then ("--genes_gff " +  '"' + genes_gff + '"') else ""} \
      ~{true="--reverse_complement" false="" reverse_complement} \
      ~{if defined(feature) then ("--feature " +  '"' + feature + '"') else ""} \
      ~{if defined(identifier) then ("--identifier " +  '"' + identifier + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(allowed_mismatches) then ("--allowed_mismatches " +  '"' + allowed_mismatches + '"') else ""} \
      ~{if defined(out_head) then ("--outhead " +  '"' + out_head + '"') else ""} \
      ~{if defined(dir_out) then ("--dirout " +  '"' + dir_out + '"') else ""} \
      ~{if defined(bwa_exec) then ("--bwa_exec " +  '"' + bwa_exec + '"') else ""} \
      ~{if defined(sam_tools_cmd) then ("--samtools_cmd " +  '"' + sam_tools_cmd + '"') else ""} \
      ~{if defined(params_aln) then ("--params_aln " +  '"' + params_aln + '"') else ""} \
      ~{if defined(sampe_params) then ("--sampe_params " +  '"' + sampe_params + '"') else ""} \
      ~{if defined(sam_se_params) then ("--samse_params " +  '"' + sam_se_params + '"') else ""} \
      ~{true="--create_wig" false="" create_wig}
  >>>
  parameter_meta {
    fast_q_one: "A list of the first read of the sequencing. (default: None)"
    list_second_read: "[FASTQ_2 [FASTQ_2 ...]], --fastq_2 [FASTQ_2 [FASTQ_2 ...]] A list of the second read of the sequencing. The order of these files should be as same as -1. Optional. (default: None)"
    genes_gff: "Name of gff file to count the reads per gene. If not given or not readable, skip this stage. (default: None)"
    reverse_complement: "Treat the reads as reverse complement only when counting number of reads per gene and generating wig file. The resulting BAM files will be the original ones. Use this when treating libraries built using Livny's protocol. (default: False)"
    feature: "Name of features to count on the GTF file (column 2). (default: exon)"
    identifier: "Name of identifier to print (in column 8 of the GTF file). (default: gene_id)"
    overlap: "Minimal required overlap between the fragment and the feature. (default: 5)"
    allowed_mismatches: "Allowed mismatches for BWA mapping. (default: 2)"
    out_head: "Output file names of counts table (suffixed _counts.txt) and wiggle file (suffixed _coverage.wig) (default: bwa_mapped_single_reads)"
    dir_out: "Output directory, default is this directory. (default: .)"
    bwa_exec: "bwa command (default: bwa)"
    sam_tools_cmd: "Samtools executable. (default: samtools)"
    params_aln: "Additional parameters for aln function of bwa. (default: -t 8 -R 200)"
    sampe_params: "Additional parameters for sampe function of bwa. (default: -a 1500 -P)"
    sam_se_params: "Additional parameters for samse function of bwa. (default: )"
    create_wig: "Create a coverage wiggle file. (default: False)"
    genome_fast_a: "Name of genome fasta file. The file must be indexed usingbwa index command prior to this run."
  }
}