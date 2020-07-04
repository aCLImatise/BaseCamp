version 1.0

task ClipcontextLst {
  input {
    Int? min_len
    Boolean? strict
    Boolean? add_infos
    String? gtf
    String? out
  }
  command <<<
    clipcontext lst \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{true="--strict" false="" strict} \
      ~{true="--add-infos" false="" add_infos} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    min_len: "Accept only transcripts with length >= --min-len (default: False)"
    strict: "Accept only transcripts with transcript support level (TSL) 1-5 (default: False)"
    add_infos: "Add additional information columns (gene ID, TSL, length) to output file (default: False)"
    gtf: "Genomic annotations (hg38) GTF file (.gtf or .gtf.gz) (NOTE: tested with Ensembl GTF files, expects transcript support level (TSL) information)"
    out: "Output transcript IDs list file"
  }
}