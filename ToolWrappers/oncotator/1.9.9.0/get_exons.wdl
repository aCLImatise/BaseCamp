version 1.0

task GetExons {
  input {
    Boolean? include_noncoding
    Int? padding
    String input_gene_list_file
    String transcript_ds_config
    String output_file_name
    String files_dot
  }
  command <<<
    get_exons \
      ~{input_gene_list_file} \
      ~{transcript_ds_config} \
      ~{output_file_name} \
      ~{files_dot} \
      ~{if (include_noncoding) then "--includeNonCoding" else ""} \
      ~{if defined(padding) then ("--padding " +  '"' + padding + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    include_noncoding: "Whether non-coding regions should be included."
    padding: "Pad each exon by a number of bases on both sides.\\nDefault: 0\\nError file will be [outputFilename].err.\\nTranscript datasource is the full path to the directory housing the datasource.\\nThis script is experimental and has minimal error checking.\\nTo create a gene list from GENCODE (and probably ENSEMBL) gtfs:\\negrep \\\"basic\\\" gencode.v18.annotation.gtf | sed -r \\\"s/.+gene_name\\ \\\"([A-Za-z0-9]+)\\\".+//g\\\" | sort | uniq >gene_list.txt\\nTo append genes from another GENCODE/ENSEMBL gtf:\\negrep \\\"basic\\\" gencode.v18.long_noncoding_RNAs.gtf | sed -r \\\"s/.+gene_name\\ \\\"([A-Za-z0-9]+)\\\".+//g\\\" | sort | uniq >> gene_list.txt\\nTo get the output of this file into a BED format, for example, with a given gene list and gencode datasource :\\nget_exons gene_list.txt /my_db_dir/gencode_out2/hg19/gencode_out2.config gencode_basic_exons.txt\\nawk '{print $2 \\\"        \\\" $3 \\\"  \\\" $4 \\\"  \\\" $1}' gencode_basic_exons.txt | sort -k1,1 -k2,2n  > gencode_basic_exons.bed.txt\\nThen to merge the exons using bedtools, if you would like:\\nmergeBed -nms -i gencode_basic_exons.bed.txt > gencode_basic_exons.merged.txt\\n"
    input_gene_list_file: "A simple file with a gene name (usually Hugo Symbol)\\non each line"
    transcript_ds_config: "Path to transcript datasource config file."
    output_file_name: "output path. Must be writable. Will overwrite existing"
    files_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}