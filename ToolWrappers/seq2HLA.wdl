version 1.0

task Seq2HLA {
  input {
    Int? one
    Int? two
    String? run_name
    Int? threads
    Int? trim_three
  }
  command <<<
    seq2HLA \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(run_name) then ("--runName " +  '"' + run_name + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(trim_three) then ("--trim3 " +  '"' + trim_three + '"') else ""}
  >>>
  parameter_meta {
    one: "File name of #1 mates (uncompressed or gzipped fastq)"
    two: "File name of #2 mates (uncompressed or gzipped fastq)"
    run_name: "Name of this HLA typing run. Wil be used throughout\\nthis process as part of the name of the newly created\\nfiles."
    threads: "Bowtie option: Launch <int> parallel search threads.\\nDefault (seq2HLA): 6"
    trim_three: "Bowtie option: -3 <int> trims <int> bases from the low\\nquality 3' end of each read. Default: 0\\n"
  }
  output {
    File out_stdout = stdout()
  }
}