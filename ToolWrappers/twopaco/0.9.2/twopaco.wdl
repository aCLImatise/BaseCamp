version 1.0

task Twopaco {
  input {
    File? outfile
    Boolean? test
    Directory? tmpdir
    Int? threads
    Int? rounds
    Int? has_hf_number
    Int? filter_size
    String? k_value
    String two_paco
  }
  command <<<
    twopaco \
      ~{two_paco} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(rounds) then ("--rounds " +  '"' + rounds + '"') else ""} \
      ~{if defined(has_hf_number) then ("--hashfnumber " +  '"' + has_hf_number + '"') else ""} \
      ~{if defined(filter_size) then ("--filtersize " +  '"' + filter_size + '"') else ""} \
      ~{if defined(k_value) then ("--kvalue " +  '"' + k_value + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outfile: "Output file name prefix"
    test: "Run tests"
    tmpdir: "Temporary directory name"
    threads: "Number of worker threads"
    rounds: "Number of computation rounds"
    has_hf_number: "Number of hash functions"
    filter_size: "(required)  Size of the filter"
    k_value: "Value of k"
    two_paco: "[-o <file name>] [--test] [--tmpdir <directory name>] [-t\\n<integer>] [-r <integer>] [-q <integer>] -f <integer> [-k\\n<oddc>] [--] [--version] [-h] <fasta files with genomes> ..."
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}