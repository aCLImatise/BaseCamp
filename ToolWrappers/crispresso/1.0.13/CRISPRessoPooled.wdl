version 1.0

task CRISPRessoPooled {
  input {
    Int? analysis
    Boolean? trim_sequences
    Boolean? ignore_insertions
    Boolean? ignore_deletions
    Boolean? keep_intermediate
    Boolean? dump
    Boolean? save_also_png
    File? f
    Int? r_two
    Int? r_one
  }
  command <<<
    CRISPRessoPooled \
      ~{if defined(analysis) then ("-Analysis " +  '"' + analysis + '"') else ""} \
      ~{if (trim_sequences) then "--trim_sequences" else ""} \
      ~{if (ignore_insertions) then "--ignore_insertions" else ""} \
      ~{if (ignore_deletions) then "--ignore_deletions" else ""} \
      ~{if (keep_intermediate) then "--keep_intermediate" else ""} \
      ~{if (dump) then "--dump" else ""} \
      ~{if (save_also_png) then "--save_also_png" else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(r_two) then ("-r2 " +  '"' + r_two + '"') else ""} \
      ~{if defined(r_one) then ("-r1 " +  '"' + r_one + '"') else ""}
  >>>
  parameter_meta {
    analysis: "CRISPR/Cas9 outcomes from POOLED deep sequencing data-\\n)                                            )"
    trim_sequences: "Enable the trimming of Illumina adapters with"
    ignore_insertions: "Ignore insertions events for the quantification and"
    ignore_deletions: "Ignore deletions events for the quantification and"
    keep_intermediate: "Keep all the intermediate files (default: False)"
    dump: "Dump numpy arrays and pandas dataframes to file for"
    save_also_png: "Save also .png images additionally to .pdf files"
    f: ""
    r_two: ""
    r_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}