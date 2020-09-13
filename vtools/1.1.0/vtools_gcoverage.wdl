version 1.0

task Vtoolsgcoverage {
  input {
    File? input_gvc_f
    File? ref_flat_file
    Boolean? per_exon
  }
  command <<<
    vtools_gcoverage \
      ~{if defined(input_gvc_f) then ("--input-gvcf " +  '"' + input_gvc_f + '"') else ""} \
      ~{if defined(ref_flat_file) then ("--refflat-file " +  '"' + ref_flat_file + '"') else ""} \
      ~{if (per_exon) then "--per-exon" else ""}
  >>>
  parameter_meta {
    input_gvc_f: "Path to input VCF file  [required]"
    ref_flat_file: "Path to refFlat file  [required]"
    per_exon: "/ --per-transcript  Collect metrics per exon or per transcript"
  }
  output {
    File out_stdout = stdout()
  }
}