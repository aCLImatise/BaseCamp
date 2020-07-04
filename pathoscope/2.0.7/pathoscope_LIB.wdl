version 1.0

task PathoscopeLIB {
  input {
    String? genome_file
    String? taxonid_s
    String? exclude_taxonid_s
    Boolean? nodes_c
    Boolean? sub_tax
    Boolean? online
    String? dbhost
    String? db_port
    String? dbuser
    String? db_passwd
    String? db
    String? outdir
    String? out_prefix
  }
  command <<<
    pathoscope LIB \
      ~{if defined(genome_file) then ("-genomeFile " +  '"' + genome_file + '"') else ""} \
      ~{if defined(taxonid_s) then ("-taxonIds " +  '"' + taxonid_s + '"') else ""} \
      ~{if defined(exclude_taxonid_s) then ("-excludeTaxonIds " +  '"' + exclude_taxonid_s + '"') else ""} \
      ~{true="--noDesc" false="" nodes_c} \
      ~{true="--subTax" false="" sub_tax} \
      ~{true="--online" false="" online} \
      ~{if defined(dbhost) then ("-dbhost " +  '"' + dbhost + '"') else ""} \
      ~{if defined(db_port) then ("-dbport " +  '"' + db_port + '"') else ""} \
      ~{if defined(dbuser) then ("-dbuser " +  '"' + dbuser + '"') else ""} \
      ~{if defined(db_passwd) then ("-dbpasswd " +  '"' + db_passwd + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(outdir) then ("-outDir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_prefix) then ("-outPrefix " +  '"' + out_prefix + '"') else ""}
  >>>
  parameter_meta {
    genome_file: "Specify reference genome(Download ftp://ftp.ncbi.nih.gov/blast/db/FASTA/nt.gz)"
    taxonid_s: "Specify taxon ids of your interest with comma separated (if you have multiple taxon ids). If you do not specify this option, it will work on all entries in the reference file. For taxonomy id lookup, refer to http://www.ncbi.nlm.nih.gov/taxonomy"
    exclude_taxonid_s: "Specify taxon ids to exclude with comma separated (if you have multiple taxon ids to exclude)."
    nodes_c: "Do not keep an additional description in original fasta seq header.Depending on NGS aligner, a long sequence header may slow down its mapping process."
    sub_tax: "To include all sub taxonomies under the query taxonomy id. e.g., if you set -t 4751 --subtax, it will cover all sub taxonomies under taxon id 4751 (fungi)."
    online: "To enable online searching in case you cannot find a correct taxonomy id for a given gi. When there are many entries in nt whose gi is invalid, this option may slow down the overall process."
    dbhost: "specify hostname running mysql if you want to use mysql instead of hash method in mapping gi to taxonomy id"
    db_port: "provide mysql server port if different from default (3306)"
    dbuser: "user name to access mysql"
    db_passwd: "provide password associate with user"
    db: "mysql pathoscope database name (default: pathodb)"
    outdir: "Output Directory (Default=. (current directory))"
    out_prefix: "specify an output prefix to name your target database"
  }
}