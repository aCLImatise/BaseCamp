version 1.0

task RgttoolspyGtfToBed {
  input {
    File? input_gtf_file
    File? output_bed_file
    String? define_the_source
    String? define_feature_genetranscriptexoncdsutrstartcodonstopcodonselenocysteineall
    String? define_gene_type
    String? st
    String? define_gene_list
    Boolean? id
    Boolean? save_exons_entries
  }
  command <<<
    rgt_tools_py gtf_to_bed \
      ~{if defined(input_gtf_file) then ("-i " +  '"' + input_gtf_file + '"') else ""} \
      ~{if defined(output_bed_file) then ("-o " +  '"' + output_bed_file + '"') else ""} \
      ~{if defined(define_the_source) then ("-s " +  '"' + define_the_source + '"') else ""} \
      ~{if defined(define_feature_genetranscriptexoncdsutrstartcodonstopcodonselenocysteineall) then ("-f " +  '"' + define_feature_genetranscriptexoncdsutrstartcodonstopcodonselenocysteineall + '"') else ""} \
      ~{if defined(define_gene_type) then ("-t " +  '"' + define_gene_type + '"') else ""} \
      ~{if defined(st) then ("-st " +  '"' + st + '"') else ""} \
      ~{if defined(define_gene_list) then ("-g " +  '"' + define_gene_list + '"') else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (save_exons_entries) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_gtf_file: "Input GTF file"
    output_bed_file: "Output BED file"
    define_the_source: "Define the source {ENSEMBL,HAVANA,All}"
    define_feature_genetranscriptexoncdsutrstartcodonstopcodonselenocysteineall: "Define the feature {gene,transcript,exon,CDS,UTR,start_codon,sto\\np_codon,Selenocysteine,All}"
    define_gene_type: "Define gene type e.g. 'protein_coding' more:\\nhttp://www.gencodegenes.org/gencode_biotypes.html"
    st: "Define gene status {KNOWN, NOVEL, PUTATIVE,All}"
    define_gene_list: "Define the gene list for filtering, default is None."
    id: "Use gene ID as region name, instead of gene symbol."
    save_exons_entries: "Save exons into entries with block in BED"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}