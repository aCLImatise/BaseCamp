version 1.0

task SequanaMapping {
  input {
    File? file_one
    File? file_two
    String? reference
    String? thread
    Boolean? pac_bio
    Boolean? use_samba_mba
    String welcome
    String to
    String se_quan_a
  }
  command <<<
    sequana_mapping \
      ~{welcome} \
      ~{to} \
      ~{se_quan_a} \
      ~{if defined(file_one) then ("--file1 " +  '"' + file_one + '"') else ""} \
      ~{if defined(file_two) then ("--file2 " +  '"' + file_two + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""} \
      ~{true="--pacbio" false="" pac_bio} \
      ~{true="--use-sambamba" false="" use_samba_mba}
  >>>
  parameter_meta {
    file_one: "R1 fastq file (zipped)"
    file_two: "R2 fastq file (zipped)"
    reference: "reference"
    thread: "number of threads"
    pac_bio: "specific pacbio parameters recommended by bwa mem are used"
    use_samba_mba: "use sambamba instead of samtools for the sorting"
    welcome: ""
    to: ""
    se_quan_a: ""
  }
}