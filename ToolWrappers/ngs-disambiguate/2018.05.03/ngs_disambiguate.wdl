version 1.0

task NgsDisambiguate {
  input {
    Boolean? _nosortdeprecated_option
    String? _prefix_stringrequired
    Directory? _outputdir_stringrequired
    String? _aligner_stringaligner
    String var_4
  }
  command <<<
    ngs_disambiguate \
      ~{var_4} \
      ~{if (_nosortdeprecated_option) then "-d" else ""} \
      ~{if defined(_prefix_stringrequired) then ("-s " +  '"' + _prefix_stringrequired + '"') else ""} \
      ~{if defined(_outputdir_stringrequired) then ("-o " +  '"' + _outputdir_stringrequired + '"') else ""} \
      ~{if defined(_aligner_stringaligner) then ("-a " +  '"' + _aligner_stringaligner + '"') else ""}
  >>>
  parameter_meta {
    _nosortdeprecated_option: ",  --no-sort\\n(Deprecated option for backwards compatibility)"
    _prefix_stringrequired: ",  --prefix <string>\\n(required)  Sample ID or name used as prefix. Do not include .bam"
    _outputdir_stringrequired: ",  --output-dir <string>\\n(required)  Output directory"
    _aligner_stringaligner: ",  --aligner <string>\\nAligner option {tophat(default),hisat2,bwa,star}"
    var_4: ""
  }
  output {
    File out_stdout = stdout()
    Directory out__outputdir_stringrequired = "${in__outputdir_stringrequired}"
  }
}