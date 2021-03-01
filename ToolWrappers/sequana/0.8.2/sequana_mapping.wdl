version 1.0

task SequanaMapping {
  input {
    File? file_one
    File? file_two
    Boolean? pac_bio
    String reference
    String used
  }
  command <<<
    sequana_mapping \
      ~{reference} \
      ~{used} \
      ~{if defined(file_one) then ("--file1 " +  '"' + file_one + '"') else ""} \
      ~{if defined(file_two) then ("--file2 " +  '"' + file_two + '"') else ""} \
      ~{if (pac_bio) then "--pacbio" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_one: "R1 fastq file (zipped)"
    file_two: "R2 fastq file (zipped)"
    pac_bio: "specific pacbio parameters recommended by bwa mem are"
    reference: "--thread THREAD       number of threads"
    used: "--use-sambamba        use sambamba instead of samtools for the sorting"
  }
  output {
    File out_stdout = stdout()
  }
}