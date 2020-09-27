version 1.0

task CRISPRessoWGS {
  input {
    Int? analysis
    Boolean? trim_sequences
    Boolean? ignore_insertions
    Boolean? ignore_deletions
    Boolean? keep_intermediate
    Boolean? dump
    Boolean? save_also_png
    File? r
    File? f
    File? b
  }
  command <<<
    CRISPRessoWGS \
      ~{if defined(analysis) then ("-Analysis " +  '"' + analysis + '"') else ""} \
      ~{if (trim_sequences) then "--trim_sequences" else ""} \
      ~{if (ignore_insertions) then "--ignore_insertions" else ""} \
      ~{if (ignore_deletions) then "--ignore_deletions" else ""} \
      ~{if (keep_intermediate) then "--keep_intermediate" else ""} \
      ~{if (dump) then "--dump" else ""} \
      ~{if (save_also_png) then "--save_also_png" else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    analysis: "CRISPR/Cas9 outcomes from WGS data-\\n)                                 )"
    trim_sequences: "Enable the trimming of Illumina adapters with"
    ignore_insertions: "Ignore insertions events for the quantification and"
    ignore_deletions: "Ignore deletions events for the quantification and"
    keep_intermediate: "Keep all the intermediate files (default: False)"
    dump: "Dump numpy arrays and pandas dataframes to file for"
    save_also_png: "Save also .png images additionally to .pdf files"
    r: ""
    f: ""
    b: ""
  }
  output {
    File out_stdout = stdout()
  }
}