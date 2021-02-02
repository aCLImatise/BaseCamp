version 1.0

task Hic2coolConvert {
  input {
    Int? resolution
    Int? nproc
    Boolean? silent
    Boolean? warnings
    String in_file
    String outfile
  }
  command <<<
    hic2cool convert \
      ~{in_file} \
      ~{outfile} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (warnings) then "--warnings" else ""}
  >>>
  parameter_meta {
    resolution: "integer bp resolution desired in cooler file. Setting\\nto 0 (default) will use all resolutions. If all\\nresolutions are used, a multi-res .cool file will be\\ncreated, which has a different hdf5 structure. See the\\nREADME for more info"
    nproc: "number of processes to use to parse hic file. default\\nset to 1"
    silent: "if used, silence standard program output"
    warnings: "if used, print out non-critical WARNING messages,\\nwhich are hidden by default. Silent mode takes\\nprecedence over this\\n"
    in_file: "hic input file path"
    outfile: "cooler output file path"
  }
  output {
    File out_stdout = stdout()
  }
}