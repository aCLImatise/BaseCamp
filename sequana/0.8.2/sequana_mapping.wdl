version 1.0

task SequanaMapping {
  input {
    File? file_one
    File? file_two
    String? var_2
    Boolean? pac_bio
    String _thread_thread
    String used
  }
  command <<<
    sequana_mapping \
      ~{_thread_thread} \
      ~{used} \
      ~{if defined(file_one) then ("--file1 " +  '"' + file_one + '"') else ""} \
      ~{if defined(file_two) then ("--file2 " +  '"' + file_two + '"') else ""} \
      ~{if defined(var_2) then ("--reference " +  '"' + var_2 + '"') else ""} \
      ~{if (pac_bio) then "--pacbio" else ""}
  >>>
  parameter_meta {
    file_one: "R1 fastq file (zipped)"
    file_two: "R2 fastq file (zipped)"
    var_2: ""
    pac_bio: "specific pacbio parameters recommended by bwa mem are"
    _thread_thread: "--thread THREAD       number of threads"
    used: "--use-sambamba        use sambamba instead of samtools for the sorting"
  }
  output {
    File out_stdout = stdout()
  }
}