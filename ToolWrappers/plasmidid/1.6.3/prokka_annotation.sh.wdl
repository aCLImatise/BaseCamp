version 1.0

task ProkkaAnnotationsh {
  input {
    Int? file_directoryp_prefix
  }
  command <<<
    prokka_annotation_sh \
      ~{if defined(file_directoryp_prefix) then ("-i " +  '"' + file_directoryp_prefix + '"') else ""}
  >>>
  parameter_meta {
    file_directoryp_prefix: "file in FASTA format\\n-o output directory\\n-p prefix for sample identification (mandatory) and output file name\\n-k kingdom (Bacteria by default)\\n-g group name (optional). If unset, samples will be gathered in NO_GROUP group\\n-G sample genus in case is known by user\\n-S sample species in case is known by user\\n-c clean:remove files other than gff and renamed fasta\\n-T number of threads\\n-v version\\n-h display usage message"
  }
  output {
    File out_stdout = stdout()
  }
}