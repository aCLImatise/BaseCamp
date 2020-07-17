version 1.0

task BuildGenomeBG {
  input {
    String? db
    String? gt
    String? wig
    String? ot
    String? promoter
    String? bi_promoter
    String? downstream
    String? binsize
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
  parameter_meta {
    db: "Genome of UCSC (eg hg18). If -d (--db) is not given, this script searches for a local sqlite3 referenced by -g (--gt). WARNING: MySQLdb must be installed to use the tables of UCSC."
    gt: "Name of the gene annotation table (or local sqlite3 file) (eg refGene or knownGene). If -d (--db) is given, build_genomeBG will connect to UCSC and download the specified gene table. Otherwise, build_genomeBG search for a local sqlite3 file with the name."
    wig: "WIG file needed to obtain genome locations in BG annotation. VariableStep and fixedWig files are accepted."
    ot: "Output sqlite3 db file name. The gene annotation table read from the local sqlite3 file or UCSC DB will be saved in a table named as 'GeneTable' and the computed genome bg annotation will be saved in two tables named as 'GenomeBGS' and 'GenomeBGP. If this option is not given, this script generates a sqlite3 file with the same name as given through -g (--gt). WARNING! When an existing local sqlite3 file is opened and saved as the same name, the tables in the file will be overwritten."
    promoter: "Maximum promoter size to consider for genome bg annotation. This must be >= 1000bp. Any value less than 1000bp will be set to 1000bp. DEFAULT: 10000bp"
    bi_promoter: "Maximum Bidirectional promoter size to consider for genome bg annotation. This must be >= 1000bp. Any value less than 1000bp will be set to 1000bp. DEFAULT: 20000bp"
    downstream: "Maximum immediate downstream size to consider for genome bg annotation. This must be >= 1000bp. Any value less than 1000bp will be set to 1000bp. DEFAULT: 10000bp"
    binsize: "Binsize with which to bin promoter, bidirectional promoter, and immediate downstream sizes. In each bin, the percentage of genome will be calculated. DEFAULT=1000bp"
  }
}