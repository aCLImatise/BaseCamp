version 1.0

task ArcasHLAConvert {
  input {
    Boolean? resolution
    File? outfile
    Boolean? force
    File tsv_containing_genotypes
  }
  command <<<
    arcasHLA convert \
      ~{tsv_containing_genotypes} \
      ~{if (resolution) then "--resolution" else ""} \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/arcas-hla:0.2.5--hdfd78af_0"
  }
  parameter_meta {
    resolution: "output resolution (1,2,3) or grouping (g-group, p-group)"
    outfile: "output file\\ndefault: ./file_basename.resolution.tsv"
    force: "force conversion for grouped alleles even if it results in loss of resolution"
    tsv_containing_genotypes: "tsv containing HLA genotypes, see github for example file structure."
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}