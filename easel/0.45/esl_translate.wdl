version 1.0

task Esltranslate {
  input {
    Int? use_alt_code
    Int? minimum_orf_length
    Boolean? orfs_must_initiate
    Boolean? orfs_must_start
    Boolean? use_windowed_reading
    File? in_format
    Boolean? watson
    Boolean? crick
    Boolean? options
  }
  command <<<
    esl_translate \
      ~{if defined(use_alt_code) then ("-c " +  '"' + use_alt_code + '"') else ""} \
      ~{if defined(minimum_orf_length) then ("-l " +  '"' + minimum_orf_length + '"') else ""} \
      ~{if (orfs_must_initiate) then "-m" else ""} \
      ~{if (orfs_must_start) then "-M" else ""} \
      ~{if (use_windowed_reading) then "-W" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if (watson) then "--watson" else ""} \
      ~{if (crick) then "--crick" else ""} \
      ~{if (options) then "-options" else ""}
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
  output {
    File out_stdout = stdout()
  }
}