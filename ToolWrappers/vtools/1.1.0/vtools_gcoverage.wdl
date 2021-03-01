version 1.0

task Vtoolsgcoverage {
  input {
    File? input_gvc_f
    File? ref_flat_file
    Boolean? per_transcript
  }
  command <<<
    vtools_gcoverage \
      ~{if defined(input_gvc_f) then ("--input-gvcf " +  '"' + input_gvc_f + '"') else ""} \
      ~{if defined(ref_flat_file) then ("--refflat-file " +  '"' + ref_flat_file + '"') else ""} \
      ~{if (per_transcript) then "--per-transcript" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_gvc_f: "Path to input VCF file  [required]"
    ref_flat_file: "Path to refFlat file  [required]"
    per_transcript: "Collect metrics per exon or per transcript"
  }
  output {
    File out_stdout = stdout()
  }
}