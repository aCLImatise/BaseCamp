version 1.0

task MmseqsCreatetaxdb {
  input {
    Directory? ncbi_tax_dump
    File? tax_mapping_file
    Int? tax_mapping_mode
    Int? tax_db_mode
    Int? threads
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs createtaxdb \
      ~{if defined(ncbi_tax_dump) then ("--ncbi-tax-dump " +  '"' + ncbi_tax_dump + '"') else ""} \
      ~{if defined(tax_mapping_file) then ("--tax-mapping-file " +  '"' + tax_mapping_file + '"') else ""} \
      ~{if defined(tax_mapping_mode) then ("--tax-mapping-mode " +  '"' + tax_mapping_mode + '"') else ""} \
      ~{if defined(tax_db_mode) then ("--tax-db-mode " +  '"' + tax_db_mode + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    ncbi_tax_dump: "NCBI tax dump directory. The tax dump can be downloaded here \\\"ftp://ftp.ncbi.nih.gov/pub/taxonomy/taxdump.tar.gz\\\" []"
    tax_mapping_file: "File to map sequence identifier to taxonomical identifier []"
    tax_mapping_mode: "Map taxonomy based on sequence database 0: .lookup file 1: .source file [0]"
    tax_db_mode: "Create taxonomy database as: 0: .dmp flat files (human readable) 1: binary dump (faster readin) [1]"
    threads: "Number of CPU-cores used (all by default) [2]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}