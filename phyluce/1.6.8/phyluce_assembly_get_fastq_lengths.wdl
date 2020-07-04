version 1.0

task PhyluceAssemblyGetFastqLengths {
  input {
    String? directory_fastq_summarize
    Boolean? csv
  }
  command <<<
    phyluce_assembly_get_fastq_lengths \
      ~{if defined(directory_fastq_summarize) then ("--input " +  '"' + directory_fastq_summarize + '"') else ""} \
      ~{true="--csv" false="" csv}
  >>>
  parameter_meta {
    directory_fastq_summarize: "The directory of fastq files to summarize"
    csv: "Give output in CSV"
  }
}