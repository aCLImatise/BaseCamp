version 1.0

task IuSubsampleFastq {
  input {
    File? r_one
    File? r_two
    File? output_one
    File? output_two
    Int? num_reads
  }
  command <<<
    iu-subsample-fastq \
      ~{if defined(r_one) then ("--r1 " +  '"' + r_one + '"') else ""} \
      ~{if defined(r_two) then ("--r2 " +  '"' + r_two + '"') else ""} \
      ~{if defined(output_one) then ("--output1 " +  '"' + output_one + '"') else ""} \
      ~{if defined(output_two) then ("--output2 " +  '"' + output_two + '"') else ""} \
      ~{if defined(num_reads) then ("--num-reads " +  '"' + num_reads + '"') else ""}
  >>>
  parameter_meta {
    r_one: "FASTQ file to be subsampled. If you are subsampling a merged FASTQ or you don't have reverse reads, provide the filepath here and do not supply an argument for --r2. If you have forward and reverse reads, supply the filepaths as the arguments for --r1 and --r2, respectively."
    r_two: "FASTQ file for the reverse reads. Should be provided only if you are subsampling forward and reverse reads."
    output_one: "The output filepath for the forward read. By default, the suffix \"_{n}randomreads\" is appended to the input filename"
    output_two: "The output filepath for the reverse read. By default, the suffix \"_{n}randomreads\" is appended to the input filename, where {n} is the argument of --num-reads. If you do not provide an argument for --r2 do not provide an argument for --output2."
    num_reads: "Number of FASTQ entries to randomly sample"
  }
}