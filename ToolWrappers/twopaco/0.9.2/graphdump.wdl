version 1.0

task Graphdump {
  input {
    Int? _kvalue_integerrequired
    Boolean? _seqfile_accepted
    Int? _format_seqgroupdotgfagfafastarequired
    Boolean? prefix
  }
  command <<<
    graphdump \
      ~{if defined(_kvalue_integerrequired) then ("-k " +  '"' + _kvalue_integerrequired + '"') else ""} \
      ~{if (_seqfile_accepted) then "-s" else ""} \
      ~{if defined(_format_seqgroupdotgfagfafastarequired) then ("-f " +  '"' + _format_seqgroupdotgfagfafastarequired + '"') else ""} \
      ~{if (prefix) then "--prefix" else ""}
  >>>
  parameter_meta {
    _kvalue_integerrequired: ",  --kvalue <integer>\\n(required)  Value of k"
    _seqfile_accepted: "<>,  --seqfile <>  (accepted multiple times)\\nsequences file name"
    _format_seqgroupdotgfagfafastarequired: ",  --format <seq|group|dot|gfa1|gfa2\\n|fasta>\\n(required)  Output format"
    prefix: "Add a prefix to segments in GFA (in case if you have genomes with\\nidentical FASTA headers)"
  }
  output {
    File out_stdout = stdout()
  }
}