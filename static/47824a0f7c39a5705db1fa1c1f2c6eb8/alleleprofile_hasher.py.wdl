version 1.0

task AlleleprofileHasherpy {
  input {
    File? profile
    File? database
    File? outfile
    Boolean? verbose
    Boolean? force
  }
  command <<<
    alleleprofile_hasher_py \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chewiesnake:3.0.0--1"
  }
  parameter_meta {
    profile: "Path to allele profile in tsv with first column #File"
    database: "Path to location of all loci fasta files"
    outfile: "Path to new allele profile containing the hash values"
    verbose: "Print verbose statements"
    force: "Force overwrite of existing result files"
  }
  output {
    File out_stdout = stdout()
  }
}