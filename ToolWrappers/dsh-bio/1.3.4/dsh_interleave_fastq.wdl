version 1.0

task Dshinterleavefastq {
  input {
    Boolean? about
    Boolean? first_fast_q_file
    Boolean? second_fast_q_file
    File? paired_file
    File? unpaired_file
  }
  command <<<
    dsh_interleave_fastq \
      ~{if (about) then "--about" else ""} \
      ~{if (first_fast_q_file) then "--first-fastq-file" else ""} \
      ~{if (second_fast_q_file) then "--second-fastq-file" else ""} \
      ~{if (paired_file) then "--paired-file" else ""} \
      ~{if (unpaired_file) then "--unpaired-file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    about: "display about message [optional]"
    first_fast_q_file: "[class java.io.File]  first FASTQ input file [required]"
    second_fast_q_file: "[class java.io.File]  second FASTQ input file [required]"
    paired_file: "[class java.io.File]  output interleaved paired FASTQ file [required]"
    unpaired_file: "[class java.io.File]  output unpaired FASTQ file [required]"
  }
  output {
    File out_stdout = stdout()
    File out_paired_file = "${in_paired_file}"
    File out_unpaired_file = "${in_unpaired_file}"
  }
}