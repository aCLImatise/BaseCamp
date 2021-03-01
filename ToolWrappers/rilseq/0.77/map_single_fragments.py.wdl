version 1.0

task MapSingleFragmentspy {
  input {
    Array[Int] fast_q_one
    Boolean? list_second_optionaldefault
    File? genes_gff
    Boolean? reverse_complement
    File? feature
    File? identifier
    Int? overlap
    Int? allowed_mismatches
    File? out_head
    Directory? dir_out
    String? bwa_exec
    String? sam_tools_cmd
    Int? params_aln
    Int? sampe_params
    String? sam_se_params
    Boolean? create_wig
  }
  command <<<
    map_single_fragments_py \
      ~{if defined(fast_q_one) then ("--fastq_1 " +  '"' + fast_q_one + '"') else ""} \
      ~{if (list_second_optionaldefault) then "-2" else ""} \
      ~{if defined(genes_gff) then ("--genes_gff " +  '"' + genes_gff + '"') else ""} \
      ~{if (reverse_complement) then "--reverse_complement" else ""} \
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
      ~{if (create_wig) then "--create_wig" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q_one: "A list of the first read of the sequencing. (default:\\nNone)"
    list_second_optionaldefault: "[FASTQ_2 [FASTQ_2 ...]], --fastq_2 [FASTQ_2 [FASTQ_2 ...]]\\nA list of the second read of the sequencing. The order\\nof these files should be as same as -1. Optional.\\n(default: None)"
    genes_gff: "Name of gff file to count the reads per gene. If not\\ngiven or not readable, skip this stage. (default:\\nNone)"
    reverse_complement: "Treat the reads as reverse complement only when\\ncounting number of reads per gene and generating wig\\nfile. The resulting BAM files will be the original\\nones. Use this when treating libraries built using\\nLivny's protocol. (default: False)"
    feature: "Name of features to count on the GTF file (column 2).\\n(default: exon)"
    identifier: "Name of identifier to print (in column 8 of the GTF\\nfile). (default: gene_id)"
    overlap: "Minimal required overlap between the fragment and the\\nfeature. (default: 5)"
    allowed_mismatches: "Allowed mismatches for BWA mapping. (default: 2)"
    out_head: "Output file names of counts table (suffixed\\n_counts.txt) and wiggle file (suffixed _coverage.wig)\\n(default: bwa_mapped_single_reads)"
    dir_out: "Output directory, default is this directory. (default:\\n.)"
    bwa_exec: "bwa command (default: bwa)"
    sam_tools_cmd: "Samtools executable. (default: samtools)"
    params_aln: "Additional parameters for aln function of bwa.\\n(default: -t 8 -R 200)"
    sampe_params: "Additional parameters for sampe function of bwa.\\n(default: -a 1500 -P)"
    sam_se_params: "Additional parameters for samse function of bwa.\\n(default: )"
    create_wig: "Create a coverage wiggle file. (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_out_head = "${in_out_head}"
    Directory out_dir_out = "${in_dir_out}"
  }
}