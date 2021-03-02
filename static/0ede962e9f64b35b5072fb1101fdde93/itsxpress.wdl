version 1.0

task Itsxpress {
  input {
    File? fast_q
    Boolean? single_end
    Int? fast_q_two
    File? outfile
    Int? outfile_two
    File? tempdir
    Boolean? keep_temp
    String? region
    Float? cluster_id
    Boolean? reversed_primers
    File? log
    Int? threads
  }
  command <<<
    itsxpress \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if (single_end) then "--single_end" else ""} \
      ~{if defined(fast_q_two) then ("--fastq2 " +  '"' + fast_q_two + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(outfile_two) then ("--outfile2 " +  '"' + outfile_two + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{if (keep_temp) then "--keeptemp" else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(cluster_id) then ("--cluster_id " +  '"' + cluster_id + '"') else ""} \
      ~{if (reversed_primers) then "--reversed_primers" else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q: "A .fastq, .fq, .fastq.gz or .fq.gz file. Interleaved\\nor not."
    single_end: "A flag to specify that the FASTQ file is single-ended\\n(not paired). Default is false."
    fast_q_two: "A .fastq, .fq, .fastq.gz or .fq.gz file. representing\\nread 2 (optional)"
    outfile: "the trimmed Fastq file, if it ends in 'gz' it will be\\ngzipped"
    outfile_two: "the trimmed read 2 Fastq file, if it ends in 'gz' it\\nwill be gzipped. If provided, reads will be returned\\nunmerged."
    tempdir: "The temp file directory"
    keep_temp: "Should intermediate files be kept?"
    region: "The taxonomic group sequenced."
    cluster_id: "The percent identity for clustering reads range\\n[0.99-1.0], set to 1 for exact dereplication."
    reversed_primers: "Primers are in reverse orientation as in Taylor et al.\\n2016, DOI:10.1128/AEM.02576-16. If selected ITSxpress\\nreturns trimmed reads flipped to the forward\\norientation"
    log: "Log file"
    threads: "Number of processor threads to use."
  }
  output {
    File out_stdout = stdout()
  }
}