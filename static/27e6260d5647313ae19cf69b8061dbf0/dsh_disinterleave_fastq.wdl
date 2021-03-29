version 1.0

task Dshdisinterleavefastq {
  input {
    Boolean? about
    Boolean? paired_file
    Boolean? unpaired_file
    File? first_fast_q_file
    File? second_fast_q_file
  }
  command <<<
    dsh_disinterleave_fastq \
      ~{if (about) then "--about" else ""} \
      ~{if (paired_file) then "--paired-file" else ""} \
      ~{if (unpaired_file) then "--unpaired-file" else ""} \
      ~{if (first_fast_q_file) then "--first-fastq-file" else ""} \
      ~{if (second_fast_q_file) then "--second-fastq-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dsh-bio:2.0.3--0"
  }
  parameter_meta {
    about: "display about message [optional]"
    paired_file: "[class java.io.File]  interleaved paired FASTQ input file [required]"
    unpaired_file: "[class java.io.File]  unpaired FASTQ input file [optional]"
    first_fast_q_file: "[class java.io.File]  first FASTQ output file [required]"
    second_fast_q_file: "[class java.io.File]  second FASTQ output file [required]"
  }
  output {
    File out_stdout = stdout()
    File out_first_fast_q_file = "${in_first_fast_q_file}"
    File out_second_fast_q_file = "${in_second_fast_q_file}"
  }
}