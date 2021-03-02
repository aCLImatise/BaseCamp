version 1.0

task Geneorderpy {
  input {
    File? outfile
    String? allow_only_entries
    String? forbid_entries_tax
    String? output_format_nname
    String? ignore
    Boolean? ignore_all
    Boolean? not_rna
    Boolean? mad
    Boolean? max
    String gb_files
  }
  command <<<
    geneorder_py \
      ~{gb_files} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(allow_only_entries) then ("-t " +  '"' + allow_only_entries + '"') else ""} \
      ~{if defined(forbid_entries_tax) then ("-T " +  '"' + forbid_entries_tax + '"') else ""} \
      ~{if defined(output_format_nname) then ("-f " +  '"' + output_format_nname + '"') else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if (ignore_all) then "--ignoreall" else ""} \
      ~{if (not_rna) then "--notrna" else ""} \
      ~{if (mad) then "--mad" else ""} \
      ~{if (max) then "--max" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outfile: "write values to FILE (default: stdout)"
    allow_only_entries: "allow only entries with TAX in the taxonomy"
    forbid_entries_tax: "forbid all entries with TAX in the taxonomy"
    output_format_nname: "output format: %n=name, %a=accession, %g=gene order"
    ignore: "ignore genes with name NAME"
    ignore_all: "ignore all errors"
    not_rna: "ignore tRNAs"
    mad: "merge adjacent duplicates"
    max: "consider only max score part per gene"
    gb_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}