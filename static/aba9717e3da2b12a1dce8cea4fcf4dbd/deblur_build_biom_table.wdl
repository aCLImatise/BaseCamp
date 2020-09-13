version 1.0

task DeblurBuildbiomtable {
  input {
    Int? min_reads
    String? file_type
    Int? log_level
    File? log_file
    String str
    String table
    Int five_critical
  }
  command <<<
    deblur build_biom_table \
      ~{str} \
      ~{table} \
      ~{five_critical} \
      ~{if defined(min_reads) then ("--min-reads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(file_type) then ("--file_type " +  '"' + file_type + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    min_reads: "In output biom table - keep only sequences\\nappearing at least min-reads in all samples\\ncombined.  [default: 10]"
    file_type: "ending of files to be added to the biom table\\n[default: .fasta.trim.derep.no_artifacts.msa.debl\\nur.no_chimeras]"
    log_level: "RANGE  Level of messages for log file(range 1-debug to"
    log_file: "log file name  [default: deblur.log]"
    str: "the files type to add to the"
    table: "(default='.trim.derep.no_artifacts.msa.deblur.no_chimeras',   can"
    five_critical: "[default: 2]"
  }
  output {
    File out_stdout = stdout()
  }
}