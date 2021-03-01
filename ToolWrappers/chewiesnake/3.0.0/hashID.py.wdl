version 1.0

task HashIDpy {
  input {
    File? profile
    File? outfile
    Boolean? force
  }
  command <<<
    hashID_py \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chewiesnake:3.0.0--1"
  }
  parameter_meta {
    profile: "Path to allele profile in tsv with first column #File"
    outfile: "Path to hash id output containing a hash sequence type"
    force: "Force overwrite of existing result files"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}