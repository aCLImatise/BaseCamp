version 1.0

task GetgffinfoSplit {
  input {
    File? verbose
    Int? number
    Boolean? gzip
    String? gff_file
  }
  command <<<
    get_gff_info split \
      ~{gff_file} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    verbose: "Prefix for the file name in output  [default: split]"
    number: "Number of chunks into which split the GFF file\\n[default: 10]"
    gzip: "gzip output files"
    gff_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_verbose = "${in_verbose}"
  }
}