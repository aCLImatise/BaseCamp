version 1.0

task Biopetvalidateannotation {
  input {
    String? log_level
    File? ref_flat_file
    File? gtf_file
    File? reference
    Boolean? disable_fail
    String validate_annotation
  }
  command <<<
    biopet_validateannotation \
      ~{validate_annotation} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""} \
      ~{if defined(ref_flat_file) then ("--refflatFile " +  '"' + ref_flat_file + '"') else ""} \
      ~{if defined(gtf_file) then ("--gtfFile " +  '"' + gtf_file + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (disable_fail) then "--disableFail" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    log_level: "Level of log information printed. Possible levels: 'debug', 'info', 'warn', 'error'"
    ref_flat_file: "Refflat file to check"
    gtf_file: "Gtf files to check"
    reference: "Reference fasta to check vcf file against"
    disable_fail: "Do not fail on error. The tool will still exit when encountering an error, but will do so with exit code 0"
    validate_annotation: ""
  }
  output {
    File out_stdout = stdout()
  }
}