version 1.0

task Snpitrunpy {
  input {
    File? path_read_classifyeither
  }
  command <<<
    snpit_run_py \
      ~{if defined(path_read_classifyeither) then ("--input " +  '"' + path_read_classifyeither + '"') else ""}
  >>>
  parameter_meta {
    path_read_classifyeither: "the path to the VCF or FASTA file to read and classify\\n(either can be bzip2ed/gzipped)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}