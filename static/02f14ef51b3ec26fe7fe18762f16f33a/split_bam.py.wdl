version 1.0

task SplitBampy {
  input {
    File? input_file
    File? gene_list
    File? out_prefix
  }
  command <<<
    split_bam_py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(gene_list) then ("--genelist " +  '"' + gene_list + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format. BAM file should\\nbe sorted and indexed."
    gene_list: "Gene list in bed foramt. All reads hits to exon\\nregions (defined by this gene list) will be saved into\\none BAM file, the remaining reads will saved into\\nanother BAM file."
    out_prefix: "Prefix of output BAM files. \\\"prefix.in.bam\\\" file\\ncontains reads mapped to the gene list specified by\\n\\\"-r\\\", \\\"prefix.ex.bam\\\" contains reads that cannot\\nmapped to gene list. \\\"prefix.junk.bam\\\" contains\\nqcfailed or unmapped reads.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_prefix = "${in_out_prefix}"
  }
}