version 1.0

task DeblurBuildbiomtable {
  input {
    Int? min_reads
    String? file_type
    Int? log_level
    File? log_file
    String seqs_fp
    String output_biom_fp
  }
  command <<<
    deblur build_biom_table \
      ~{seqs_fp} \
      ~{output_biom_fp} \
      ~{if defined(min_reads) then ("--min-reads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(file_type) then ("--file_type " +  '"' + file_type + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_reads: "In output biom table - keep only sequences\\nappearing at least min-reads in all samples\\ncombined.  [default: 10]"
    file_type: "ending of files to be added to the biom table\\n[default: .fasta.trim.derep.no_artifacts.msa.debl\\nur.no_chimeras]"
    log_level: "RANGE  Level of messages for log file(range 1-debug to"
    log_file: "log file name  [default: deblur.log]"
    seqs_fp: ""
    output_biom_fp: ""
  }
  output {
    File out_stdout = stdout()
  }
}