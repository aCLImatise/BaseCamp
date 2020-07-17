version 1.0

task SnpitRun.py {
  input {
    String? path_read_classify
  }
  command <<<
    snpit-run.py \
      ~{if defined(path_read_classify) then ("--input " +  '"' + path_read_classify + '"') else ""}
  >>>
  parameter_meta {
    path_read_classify: "the path to the VCF or FASTA file to read and classify (either can be bzip2ed/gzipped)"
  }
}