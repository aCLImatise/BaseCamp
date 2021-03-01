version 1.0

task BuildGenomeBG {
  input {
    Int? db
    File? gt
    File? wig
    File? ot
    Int? promoter
    Int? bi_promoter
    Int? downstream
    Int? binsize
  }
  command <<<
    build_genomeBG \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(gt) then ("--gt " +  '"' + gt + '"') else ""} \
      ~{if defined(wig) then ("--wig " +  '"' + wig + '"') else ""} \
      ~{if defined(ot) then ("--ot " +  '"' + ot + '"') else ""} \
      ~{if defined(promoter) then ("--promoter " +  '"' + promoter + '"') else ""} \
      ~{if defined(bi_promoter) then ("--bipromoter " +  '"' + bi_promoter + '"') else ""} \
      ~{if defined(downstream) then ("--downstream " +  '"' + downstream + '"') else ""} \
      ~{if defined(binsize) then ("--binsize " +  '"' + binsize + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "Genome of UCSC (eg hg18). If -d (--db) is not given,\\nthis script searches for a local sqlite3 referenced by\\n-g (--gt). WARNING: MySQLdb must be installed to use\\nthe tables of UCSC."
    gt: "Name of the gene annotation table (or local sqlite3\\nfile) (eg refGene or knownGene). If -d (--db) is\\ngiven, build_genomeBG will connect to UCSC and\\ndownload the specified gene table. Otherwise,\\nbuild_genomeBG search for a local sqlite3 file with\\nthe name."
    wig: "WIG file needed to obtain genome locations in BG\\nannotation. VariableStep and fixedWig files are\\naccepted."
    ot: "Output sqlite3 db file name. The gene annotation table\\nread from the local sqlite3 file or UCSC DB will be\\nsaved in a table named as 'GeneTable' and the computed\\ngenome bg annotation will be saved in two tables named\\nas 'GenomeBGS' and 'GenomeBGP. If this option is not\\ngiven, this script generates a sqlite3 file with the\\nsame name as given through -g (--gt). WARNING! When an\\nexisting local sqlite3 file is opened and saved as the\\nsame name, the tables in the file will be overwritten."
    promoter: "Maximum promoter size to consider for genome bg\\nannotation. This must be >= 1000bp. Any value less\\nthan 1000bp will be set to 1000bp. DEFAULT: 10000bp"
    bi_promoter: "Maximum Bidirectional promoter size to consider for\\ngenome bg annotation. This must be >= 1000bp. Any\\nvalue less than 1000bp will be set to 1000bp. DEFAULT:\\n20000bp"
    downstream: "Maximum immediate downstream size to consider for\\ngenome bg annotation. This must be >= 1000bp. Any\\nvalue less than 1000bp will be set to 1000bp. DEFAULT:\\n10000bp"
    binsize: "Binsize with which to bin promoter, bidirectional\\npromoter, and immediate downstream sizes. In each bin,\\nthe percentage of genome will be calculated.\\nDEFAULT=1000bp\\n"
  }
  output {
    File out_stdout = stdout()
    File out_ot = "${in_ot}"
  }
}