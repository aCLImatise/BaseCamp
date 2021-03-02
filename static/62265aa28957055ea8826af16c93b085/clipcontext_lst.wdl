version 1.0

task ClipcontextLst {
  input {
    Int? min_len
    Boolean? strict
    Boolean? add_infos
    File? gtf
    File? out
  }
  command <<<
    clipcontext lst \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if (add_infos) then "--add-infos" else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/clipcontext:0.7--py_0"
  }
  parameter_meta {
    min_len: "Accept only transcripts with length >= --min-len (default:\\nFalse)"
    strict: "Accept only transcripts with transcript support level (TSL)\\n1-5 (default: False)"
    add_infos: "Add additional information columns (gene ID, TSL, length) to\\noutput file (default: False)"
    gtf: "Genomic annotations (hg38) GTF file (.gtf or .gtf.gz) (NOTE:\\ntested with Ensembl GTF files, expects transcript support\\nlevel (TSL) information)"
    out: "Output transcript IDs list file"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}