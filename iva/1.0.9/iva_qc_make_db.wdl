version 1.0

task IvaQcMakeDb {
  input {
    File? add_to_ref
    Boolean? skip_viruses
    Int? threads
    Int? minimizer_len
    Int? max_db_size
    Boolean? verbose
    Directory directory_name
  }
  command <<<
    iva_qc_make_db \
      ~{directory_name} \
      ~{if defined(add_to_ref) then ("--add_to_ref " +  '"' + add_to_ref + '"') else ""} \
      ~{true="--skip_viruses" false="" skip_viruses} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(minimizer_len) then ("--minimizer_len " +  '"' + minimizer_len + '"') else ""} \
      ~{if defined(max_db_size) then ("--max_db_size " +  '"' + max_db_size + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    add_to_ref: "Filename of Genbank IDs or GI numbers to be added to database. Format is: whitespace separated list of GI numbers on each line. One line defines one genome (e.g. flu is 8 segments, so put 8 GI numbers on one line for one flu reference)"
    skip_viruses: "Do not run kraken-build --download-library viruses when building the database. If this option used, then --add_to_ref must also be used"
    threads: "Number of threads to use [1]"
    minimizer_len: "Number to pass to kraken-build minimizer_len option [13]"
    max_db_size: "Number to pass to kraken-build max_db_size option [3]"
    verbose: "Be verbose"
    directory_name: "Name of output directory"
  }
}