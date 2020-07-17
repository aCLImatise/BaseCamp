version 1.0

task DshDisinterleaveFastq {
  input {
    Boolean? about
    Boolean? paired_file
    Boolean? unpaired_file
    Boolean? first_fast_q_file
    Boolean? second_fast_q_file
  }
  command <<<
    dsh-disinterleave-fastq \
      ~{true="--about" false="" about} \
      ~{true="--paired-file" false="" paired_file} \
      ~{true="--unpaired-file" false="" unpaired_file} \
      ~{true="--first-fastq-file" false="" first_fast_q_file} \
      ~{true="--second-fastq-file" false="" second_fast_q_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    paired_file: "[class java.io.File]  interleaved paired FASTQ input file [required]"
    unpaired_file: "[class java.io.File]  unpaired FASTQ input file [optional]"
    first_fast_q_file: "[class java.io.File]  first FASTQ output file [required]"
    second_fast_q_file: "[class java.io.File]  second FASTQ output file [required]"
  }
}