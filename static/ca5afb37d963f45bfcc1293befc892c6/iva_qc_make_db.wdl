version 1.0

task IvaQcMakeDb {
  input {
    File? add_to_ref
    Boolean? skip_viruses
    Int? threads
    Int? minimizer_len
    Int? max_db_size
    Boolean? verbose
    String directory_name
  }
  command <<<
    iva_qc_make_db \
      ~{directory_name} \
      ~{if defined(add_to_ref) then ("--add_to_ref " +  '"' + add_to_ref + '"') else ""} \
      ~{if (skip_viruses) then "--skip_viruses" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(minimizer_len) then ("--minimizer_len " +  '"' + minimizer_len + '"') else ""} \
      ~{if defined(max_db_size) then ("--max_db_size " +  '"' + max_db_size + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    add_to_ref: "Filename of Genbank IDs or GI numbers to be added to\\ndatabase. Format is: whitespace separated list of GI\\nnumbers on each line. One line defines one genome\\n(e.g. flu is 8 segments, so put 8 GI numbers on one\\nline for one flu reference)"
    skip_viruses: "Do not run kraken-build --download-library viruses\\nwhen building the database. If this option used, then\\n--add_to_ref must also be used"
    threads: "Number of threads to use [1]"
    minimizer_len: "Number to pass to kraken-build minimizer_len option\\n[13]"
    max_db_size: "Number to pass to kraken-build max_db_size option [3]"
    verbose: "Be verbose"
    directory_name: "Name of output directory"
  }
  output {
    File out_stdout = stdout()
  }
}