version 1.0

task DeblurRemoveChimerasDenovo {
  input {
    Int? log_level
    File? log_file
    String seqs_fp
    String output_fp
  }
  command <<<
    deblur remove-chimeras-denovo \
      ~{seqs_fp} \
      ~{output_fp} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    log_level: "RANGE  Level of messages for log file(range 1-debug to 5-critical  [default: 2]"
    log_file: "log file name  [default: deblur.log]"
    seqs_fp: ""
    output_fp: ""
  }
}