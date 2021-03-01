version 1.0

task Graphdump {
  input {
    Int? k_value
    Boolean? _seqfile_accepted
    Int? format
    Boolean? prefix
  }
  command <<<
    graphdump \
      ~{if defined(k_value) then ("--kvalue " +  '"' + k_value + '"') else ""} \
      ~{if (_seqfile_accepted) then "-s" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (prefix) then "--prefix" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    k_value: "(required)  Value of k"
    _seqfile_accepted: "<>,  --seqfile <>  (accepted multiple times)\\nsequences file name"
    format: "<seq|group|dot|gfa1|gfa2\\n|fasta>\\n(required)  Output format"
    prefix: "Add a prefix to segments in GFA (in case if you have genomes with\\nidentical FASTA headers)"
  }
  output {
    File out_stdout = stdout()
  }
}