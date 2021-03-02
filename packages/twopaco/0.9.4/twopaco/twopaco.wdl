version 1.0

task Twopaco {
  input {
    Int? filter_size
    Float? filter_memory
    File? outfile
    Boolean? test
    Directory? tmpdir
    Int? abundance
    Int? threads
    Int? rounds
    Int? has_hf_number
    String? k_value
  }
  command <<<
    twopaco \
      ~{if defined(filter_size) then ("--filtersize " +  '"' + filter_size + '"') else ""} \
      ~{if defined(filter_memory) then ("--filtermemory " +  '"' + filter_memory + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(abundance) then ("--abundance " +  '"' + abundance + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(rounds) then ("--rounds " +  '"' + rounds + '"') else ""} \
      ~{if defined(has_hf_number) then ("--hashfnumber " +  '"' + has_hf_number + '"') else ""} \
      ~{if defined(k_value) then ("--kvalue " +  '"' + k_value + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/twopaco:0.9.4--he1b5a44_0"
  }
  parameter_meta {
    filter_size: "(OR required)  Size of the filter\\n-- OR --"
    filter_memory: "(OR required)  Memory in GBs allocated for the filter"
    outfile: "Output file name prefix"
    test: "Run tests"
    tmpdir: "Temporary directory name"
    abundance: "Vertex abundance threshold"
    threads: "Number of worker threads"
    rounds: "Number of computation rounds"
    has_hf_number: "Number of hash functions"
    k_value: "Value of k"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}