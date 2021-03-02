version 1.0

task PathoscopeLIB {
  input {
    String? genome_file
    File? taxonid_s
    String? exclude_taxonid_s
    Boolean? nodes_c
    Boolean? sub_tax
    Boolean? online
    String? dbhost
    Int? db_port
    String? dbuser
    String? db_passwd
    String? db
    Directory? outdir
    String? out_prefix
  }
  command <<<
    pathoscope LIB \
      ~{if defined(genome_file) then ("-genomeFile " +  '"' + genome_file + '"') else ""} \
      ~{if defined(taxonid_s) then ("-taxonIds " +  '"' + taxonid_s + '"') else ""} \
      ~{if defined(exclude_taxonid_s) then ("-excludeTaxonIds " +  '"' + exclude_taxonid_s + '"') else ""} \
      ~{if (nodes_c) then "--noDesc" else ""} \
      ~{if (sub_tax) then "--subTax" else ""} \
      ~{if (online) then "--online" else ""} \
      ~{if defined(dbhost) then ("-dbhost " +  '"' + dbhost + '"') else ""} \
      ~{if defined(db_port) then ("-dbport " +  '"' + db_port + '"') else ""} \
      ~{if defined(dbuser) then ("-dbuser " +  '"' + dbuser + '"') else ""} \
      ~{if defined(db_passwd) then ("-dbpasswd " +  '"' + db_passwd + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(outdir) then ("-outDir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_prefix) then ("-outPrefix " +  '"' + out_prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genome_file: "Specify reference genome(Download\\nftp://ftp.ncbi.nih.gov/blast/db/FASTA/nt.gz)"
    taxonid_s: "Specify taxon ids of your interest with comma\\nseparated (if you have multiple taxon ids). If you do\\nnot specify this option, it will work on all entries\\nin the reference file. For taxonomy id lookup, refer\\nto http://www.ncbi.nlm.nih.gov/taxonomy"
    exclude_taxonid_s: "Specify taxon ids to exclude with comma separated (if\\nyou have multiple taxon ids to exclude)."
    nodes_c: "Do not keep an additional description in original\\nfasta seq header.Depending on NGS aligner, a long\\nsequence header may slow down its mapping process."
    sub_tax: "To include all sub taxonomies under the query taxonomy\\nid. e.g., if you set -t 4751 --subtax, it will cover\\nall sub taxonomies under taxon id 4751 (fungi)."
    online: "To enable online searching in case you cannot find a\\ncorrect taxonomy id for a given gi. When there are\\nmany entries in nt whose gi is invalid, this option\\nmay slow down the overall process."
    dbhost: "specify hostname running mysql if you want to use\\nmysql instead of hash method in mapping gi to taxonomy\\nid"
    db_port: "provide mysql server port if different from default\\n(3306)"
    dbuser: "user name to access mysql"
    db_passwd: "provide password associate with user"
    db: "mysql pathoscope database name (default: pathodb)"
    outdir: "Output Directory (Default=. (current directory))"
    out_prefix: "specify an output prefix to name your target database\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}