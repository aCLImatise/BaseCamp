version 1.0

task SplitBam.py {
  input {
    String? input_file
    String? gene_list
    String? out_prefix
  }
  command <<<
    split_bam.py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(gene_list) then ("--genelist " +  '"' + gene_list + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format. BAM file should be sorted and indexed."
    gene_list: "Gene list in bed foramt. All reads hits to exon regions (defined by this gene list) will be saved into one BAM file, the remaining reads will saved into another BAM file."
    out_prefix: "Prefix of output BAM files. \"prefix.in.bam\" file contains reads mapped to the gene list specified by \"-r\", \"prefix.ex.bam\" contains reads that cannot mapped to gene list. \"prefix.junk.bam\" contains qcfailed or unmapped reads."
  }
}