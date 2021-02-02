version 1.0

task CalcProbpy {
  input {
    Boolean? filename_input_reads
    Boolean? fast_q
    Boolean? fastq_filenames_separated
    Boolean? max_ins
    Boolean? orientations
    Boolean? bowtie_two_index
    Boolean? threads
    Boolean? assembly_fast_a
    Boolean? input_sam_files
    Boolean? output_sam_file
    Boolean? mu
    Boolean? sigma
    Boolean? max_alignments
    Boolean? debug_level
    String mates_dot
    String mates
  }
  command <<<
    calc_prob_py \
      ~{mates_dot} \
      ~{mates} \
      ~{if (filename_input_reads) then "--input" else ""} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if (fastq_filenames_separated) then "--1" else ""} \
      ~{if (max_ins) then "--maxins" else ""} \
      ~{if (orientations) then "--orientations" else ""} \
      ~{if (bowtie_two_index) then "--bowtie2_index" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (assembly_fast_a) then "--assembly_fasta" else ""} \
      ~{if (input_sam_files) then "--input_sam_files" else ""} \
      ~{if (output_sam_file) then "--output_sam_file" else ""} \
      ~{if (mu) then "--mu" else ""} \
      ~{if (sigma) then "--sigma" else ""} \
      ~{if (max_alignments) then "--max_alignments" else ""} \
      ~{if (debug_level) then "--debug_level" else ""}
  >>>
  parameter_meta {
    filename_input_reads: "filename for input reads separated by commas. Must enter\\na fasta OR fastq filename."
    fast_q: "if set, input reads are fastq format (fasta by default)."
    fastq_filenames_separated: "Fastq filenames separated by commas that contain the first"
    max_ins: "Max insert sizes for mate pairs separated by commas."
    orientations: "Orientation of the mates."
    bowtie_two_index: "name of bowtie index for the assembly."
    threads: "number of threads to use for bowtie."
    assembly_fast_a: "name of the fasta file of the assembly. Used to\\ncalculate the length of the assembly."
    input_sam_files: "name of the SAM files for the corresponding reads."
    output_sam_file: "write bowtie SAM output to files starting with this prefix."
    mu: "average mate pair insert sizes."
    sigma: "standard deviation of mate pair insert sizes."
    max_alignments: "bowtie2 parameter to set the max number of alignments."
    debug_level: "determines how much debug output."
    mates_dot: "-2  --2                     Fastq filenames separated by commas that contain the second"
    mates: "-i  --minins                Min insert sizes for mate pairs separated by commas."
  }
  output {
    File out_stdout = stdout()
  }
}