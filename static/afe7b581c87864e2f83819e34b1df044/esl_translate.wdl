version 1.0

task EslTranslate {
  input {
    String? use_alt_code
    String? minimum_orf_length
    Boolean? orfs_must_initiate
    Boolean? orfs_must_start
    Boolean? use_windowed_reading
    String? in_format
    Boolean? watson
    Boolean? crick
    Boolean? options
  }
  command <<<
    esl-translate \
      ~{if defined(use_alt_code) then ("-c " +  '"' + use_alt_code + '"') else ""} \
      ~{if defined(minimum_orf_length) then ("-l " +  '"' + minimum_orf_length + '"') else ""} \
      ~{true="-m" false="" orfs_must_initiate} \
      ~{true="-M" false="" orfs_must_start} \
      ~{true="-W" false="" use_windowed_reading} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{true="--watson" false="" watson} \
      ~{true="--crick" false="" crick} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    use_alt_code: ": use alt genetic code of NCBI transl table <n>  [1]"
    minimum_orf_length: ": minimum ORF length  [20]"
    orfs_must_initiate: ": ORFs must initiate with AUG only"
    orfs_must_start: ": ORFs must start with allowed initiation codon"
    use_windowed_reading: ": use windowed, memory-efficient seq reading"
    in_format: ": specify that input file is in format <s>"
    watson: ": only translate top strand"
    crick: ": only translate bottom strand"
    options: ""
  }
}