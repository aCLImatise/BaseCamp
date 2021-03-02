version 1.0

task RandomizeFastq {
  input {
    File? force
    Int? buffer_size
    String fast_q
  }
  command <<<
    randomize_fastq \
      ~{fast_q} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(buffer_size) then ("--buffersize " +  '"' + buffer_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force: "overwrite existing output file(s)"
    buffer_size: "size of output buffer in bytes [128 MB]. Not used if\\nwriting gzipped files.\\n"
    fast_q: "input and output files; give 1, 2 or 4 filenames:\\nGiven 'in.fq', read from it and write to stdout. Given\\n'in.fq out.fq', read from in.fq and write to out.fq.\\nGiven 'in1.fq in2.fq out1.fq out2.fq', work on read\\npairs and be careful with file order (both input files\\nfirst!)If the output file name ends with '.gz' a\\ngizzepd file is written."
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
  }
}