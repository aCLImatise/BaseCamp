version 1.0

task GUESSmyLT {
  input {
    String? organism
    Array[String] reads
    Int? subsample
    File? reference
    File? mode
    File? annotation
    File? mapped
    Int? threads
    Int? memory
    File? full_path_output
    Directory directory_dot
  }
  command <<<
    GUESSmyLT \
      ~{directory_dot} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if defined(mapped) then ("--mapped " +  '"' + mapped + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(full_path_output) then ("--output " +  '"' + full_path_output + '"') else ""}
  >>>
  parameter_meta {
    organism: "Mandatory when no annotation provided. What organism\\nare you dealing with? prokaryote or eukaryote."
    reads: "One or two read files in .fastq or .fastq.gz format.\\nFiles can be compressed or uncrompressed. Handles\\ninterleaved read files and any known .fastq header\\nformat."
    subsample: "Number of subsampled reads that will be used for\\nanalysis. Must be an even number."
    reference: "Mandatory when --mapped used or when no reads provided\\n(--reads). Reference file in .fa/.fasta format.\\nReference can be either transcriptome or genome."
    mode: "Mode can be genome or transcriptome (default genome).\\nIt defines how the reference fasta file will be\\nhandled by BUSCO. This option is used when no\\nannotation is provided (--annotation)."
    annotation: "Annotation file in .gff format. Needs to contain\\ngenes."
    mapped: "Mapped file in .bam format (Will be sorted). Reference\\nthat reads have been mapped to has to be provided."
    threads: "The number of threads that can be used by GUESSmyLT.\\nNeeds to be an integer. Defualt value is 2."
    memory: "Maximum memory that can be used by GUESSmyLT in GB.\\nE.g. '10G'. Default value is 8G."
    full_path_output: "Full path to output directory. Default is working"
    directory_dot: "-n                    (Snakemake dryrun option) Allows to see the scheduling"
  }
  output {
    File out_stdout = stdout()
    File out_full_path_output = "${in_full_path_output}"
  }
}