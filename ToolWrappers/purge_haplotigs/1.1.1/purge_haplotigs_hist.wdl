version 1.0

task PurgeHaplotigsHist {
  input {
    Boolean? bam
    Boolean? genome
    Boolean? threads
    Boolean? depth
  }
  command <<<
    purge_haplotigs hist \
      ~{if (bam) then "-bam" else ""} \
      ~{if (genome) then "-genome" else ""} \
      ~{if (threads) then "-threads" else ""} \
      ~{if (depth) then "-depth" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam: "BAM file of aligned and sorted reads/subreads to the reference"
    genome: "Reference FASTA for the BAM file."
    threads: "Number of worker threads to use, DEFAULT = 4, MINIMUM = 2"
    depth: "Maximum cutoff for depth. DEFAULT = 200, increase if needed,\\nset much higher than your expected average coverage.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}