version 1.0

task Cthreepo {
  input {
    File? in_file
    File? outfile
    File? map_file
    String? accn
    File? id_from
    File? id_to
    Boolean? keep_unmapped
    Boolean? primary
    File? format
    String? column
  }
  command <<<
    cthreepo \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(map_file) then ("--mapfile " +  '"' + map_file + '"') else ""} \
      ~{if defined(accn) then ("--accn " +  '"' + accn + '"') else ""} \
      ~{if defined(id_from) then ("--id_from " +  '"' + id_from + '"') else ""} \
      ~{if defined(id_to) then ("--id_to " +  '"' + id_to + '"') else ""} \
      ~{if (keep_unmapped) then "--keep_unmapped" else ""} \
      ~{if (primary) then "--primary" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(column) then ("--column " +  '"' + column + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_file: "input file"
    outfile: "output file"
    map_file: "NCBI style assembly_report file for mapping"
    accn: "NCBI Assembly Accession with version"
    id_from: "seq-id format in the input file; can be `ens`, `uc`,\\n`gb`, or `rs`; default is `uc`"
    id_to: "seq-id format in the output file; can be `ens`, `uc`,\\n`gb`, or `rs`; default is `rs`"
    keep_unmapped: "keep lines that don't have seq-id matches"
    primary: "restrict to primary assembly only"
    format: "input file format; can be `gff3`, `gtf`, `bedgraph`\\n`bed`, `sam`, `vcf`, `wig` or `tsv`; default is `gff3`"
    column: "column where the seq-id is located; required for `tsv`\\nformat\\n"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    File out_id_to = "${in_id_to}"
  }
}