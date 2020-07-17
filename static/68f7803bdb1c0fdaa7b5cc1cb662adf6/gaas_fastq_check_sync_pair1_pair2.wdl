version 1.0

task GaasFastqCheckSyncPair1Pair2.pl {
  input {
    String? string_input_fastq
    String? complete
    Boolean? nb
  }
  command <<<
    gaas_fastq_check_sync_pair1_pair2.pl \
      ~{if defined(string_input_fastq) then ("--input " +  '"' + string_input_fastq + '"') else ""} \
      ~{if defined(complete) then ("--complete " +  '"' + complete + '"') else ""} \
      ~{true="--nb" false="" nb}
  >>>
  parameter_meta {
    string_input_fastq: "STRING: Input fastq file that will be read."
    complete: "BOLEAN - In complete mode, the script doesn't stop at the first synchronization problem, but will read the whole file and report the number of de-synchronization found."
    nb: "Integer - Allow to check just a subsample of the reads. So, define here the number of read to check."
  }
}