version 1.0

task DshInterleaveFastq {
  input {
    Boolean? about
    Boolean? first_fast_q_file
    Boolean? second_fast_q_file
    Boolean? paired_file
    Boolean? unpaired_file
  }
  command <<<
    dsh-interleave-fastq \
      ~{true="--about" false="" about} \
      ~{true="--first-fastq-file" false="" first_fast_q_file} \
      ~{true="--second-fastq-file" false="" second_fast_q_file} \
      ~{true="--paired-file" false="" paired_file} \
      ~{true="--unpaired-file" false="" unpaired_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    first_fast_q_file: "[class java.io.File]  first FASTQ input file [required]"
    second_fast_q_file: "[class java.io.File]  second FASTQ input file [required]"
    paired_file: "[class java.io.File]  output interleaved paired FASTQ file [required]"
    unpaired_file: "[class java.io.File]  output unpaired FASTQ file [required]"
  }
}