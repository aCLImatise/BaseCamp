version 1.0

task Metagenomics {
  input {
    Int? threads
    String? format
    Int? num_primary_assign
    String? index
    String? read_type
    String? right_fq
    String? left_fq
    String? unpaired_reads
  }
  command <<<
    metagenomics \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(num_primary_assign) then ("--num_primary_assign " +  '"' + num_primary_assign + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(read_type) then ("--read_type " +  '"' + read_type + '"') else ""} \
      ~{if defined(right_fq) then ("--right_fq " +  '"' + right_fq + '"') else ""} \
      ~{if defined(left_fq) then ("--left_fq " +  '"' + left_fq + '"') else ""} \
      ~{if defined(unpaired_reads) then ("--unpaired_reads " +  '"' + unpaired_reads + '"') else ""}
  >>>
  parameter_meta {
    threads: "Launch NTHREADS parallel search threads - default: 1\\n(default: 1)"
    format: "Choose format (default: fastq)"
    num_primary_assign: "It searches for at most <int> distinct, primary\\nassignments for each read or pair.Default=5 (default:\\n1)"
    index: "The basename of the index for the reference genomes\\n(default: None)"
    read_type: "Choose read type, skip if using Trinity assembles\\nreads (default: paired)"
    right_fq: "Right_fq (only when fastq format is used for read_type\\npaired) (default: None)"
    left_fq: "Left_fq (only when fastq format is used for read_type\\npaired) (default: None)"
    unpaired_reads: "Comma-separated list of files containing unpaired\\nreads to be aligned (for Trinity runs and single end\\nreads) (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}