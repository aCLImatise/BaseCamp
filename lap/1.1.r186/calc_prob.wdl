version 1.0

task CalcProb.py {
  input {
    Boolean? filename_input_reads
    Boolean? fast_q
    Boolean? fastq_filenames_first
    Boolean? fastq_filenames_second
    Boolean? mini_ns
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
  }
  command <<<
    calc_prob.py \
      ~{true="--input" false="" filename_input_reads} \
      ~{true="--fastq" false="" fast_q} \
      ~{true="--1" false="" fastq_filenames_first} \
      ~{true="--2" false="" fastq_filenames_second} \
      ~{true="--minins" false="" mini_ns} \
      ~{true="--maxins" false="" max_ins} \
      ~{true="--orientations" false="" orientations} \
      ~{true="--bowtie2_index" false="" bowtie_two_index} \
      ~{true="--threads" false="" threads} \
      ~{true="--assembly_fasta" false="" assembly_fast_a} \
      ~{true="--input_sam_files" false="" input_sam_files} \
      ~{true="--output_sam_file" false="" output_sam_file} \
      ~{true="--mu" false="" mu} \
      ~{true="--sigma" false="" sigma} \
      ~{true="--max_alignments" false="" max_alignments} \
      ~{true="--debug_level" false="" debug_level}
  >>>
  parameter_meta {
    filename_input_reads: "filename for input reads separated by commas. Must enter a fasta OR fastq filename."
    fast_q: "if set, input reads are fastq format (fasta by default)."
    fastq_filenames_first: "Fastq filenames separated by commas that contain the first mates."
    fastq_filenames_second: "Fastq filenames separated by commas that contain the second mates"
    mini_ns: "Min insert sizes for mate pairs separated by commas."
    max_ins: "Max insert sizes for mate pairs separated by commas."
    orientations: "Orientation of the mates."
    bowtie_two_index: "name of bowtie index for the assembly."
    threads: "number of threads to use for bowtie."
    assembly_fast_a: "name of the fasta file of the assembly. Used to calculate the length of the assembly."
    input_sam_files: "name of the SAM files for the corresponding reads.             "
    output_sam_file: "write bowtie SAM output to files starting with this prefix."
    mu: "average mate pair insert sizes."
    sigma: "standard deviation of mate pair insert sizes."
    max_alignments: "bowtie2 parameter to set the max number of alignments."
    debug_level: "determines how much debug output."
  }
}