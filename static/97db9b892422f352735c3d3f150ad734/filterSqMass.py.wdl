version 1.0

task FilterSqMasspy {
  input {
    File? in
    File? out
    String? chrom_filter
    File? tsv_filter
  }
  command <<<
    filterSqMass_py \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(chrom_filter) then ("--chrom_filter " +  '"' + chrom_filter + '"') else ""} \
      ~{if defined(tsv_filter) then ("--tsv_filter " +  '"' + tsv_filter + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msproteomicstools:0.11.0--py27ha968a36_1"
  }
  parameter_meta {
    in: "An input file"
    out: "An output file"
    chrom_filter: "Filter chromatograms by native id"
    tsv_filter: "Filter chromatograms by TSV file"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}