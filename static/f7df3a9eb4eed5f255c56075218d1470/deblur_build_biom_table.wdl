version 1.0

task DeblurBuildBiomTable {
  input {
    Int? min_reads
    String? file_type
    Int? log_level
    File? log_file
    String seqs_fp
    String output_biom_fp
  }
  command <<<
    deblur build-biom-table \
      ~{seqs_fp} \
      ~{output_biom_fp} \
      ~{if defined(min_reads) then ("--min-reads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(file_type) then ("--file_type " +  '"' + file_type + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    min_reads: "In output biom table - keep only sequences appearing at least min-reads in all samples combined.  [default: 10]"
    file_type: "ending of files to be added to the biom table [default: .fasta.trim.derep.no_artifacts.msa.debl ur.no_chimeras]"
    log_level: "RANGE  Level of messages for log file(range 1-debug to 5-critical  [default: 2]"
    log_file: "log file name  [default: deblur.log]"
    seqs_fp: ""
    output_biom_fp: ""
  }
}