version 1.0

task Tsv2bam {
  input {
    Boolean? in_dir
    Boolean? pop_map
    Boolean? sample
    Boolean? pe_reads_dir
    Boolean? number_use_default
  }
  command <<<
    tsv2bam \
      ~{if (in_dir) then "--in-dir" else ""} \
      ~{if (pop_map) then "--popmap" else ""} \
      ~{if (sample) then "--sample" else ""} \
      ~{if (pe_reads_dir) then "--pe-reads-dir" else ""} \
      ~{if (number_use_default) then "-t" else ""}
  >>>
  parameter_meta {
    in_dir: ": input directory."
    pop_map: ": population map."
    sample: ": name of one sample."
    pe_reads_dir: ": directory where to find the paired-end reads files (in fastq/fasta/bam (gz) format)."
    number_use_default: ": number of threads to use (default: 1)."
  }
  output {
    File out_stdout = stdout()
  }
}