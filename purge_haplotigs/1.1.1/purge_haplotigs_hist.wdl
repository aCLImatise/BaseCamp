version 1.0

task PurgeHaplotigsHist {
  input {
    Boolean? bam_bam_file
    Boolean? genome_reference_fasta
    Boolean? threads_number_use
    Boolean? depth_maximum_cutoff
  }
  command <<<
    purge_haplotigs hist \
      ~{if (bam_bam_file) then "-b" else ""} \
      ~{if (genome_reference_fasta) then "-g" else ""} \
      ~{if (threads_number_use) then "-t" else ""} \
      ~{if (depth_maximum_cutoff) then "-d" else ""}
  >>>
  parameter_meta {
    bam_bam_file: "/ -bam       BAM file of aligned and sorted reads/subreads to the reference"
    genome_reference_fasta: "/ -genome    Reference FASTA for the BAM file."
    threads_number_use: "/ -threads   Number of worker threads to use, DEFAULT = 4, MINIMUM = 2"
    depth_maximum_cutoff: "/ -depth     Maximum cutoff for depth. DEFAULT = 200, increase if needed,\\nset much higher than your expected average coverage.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}