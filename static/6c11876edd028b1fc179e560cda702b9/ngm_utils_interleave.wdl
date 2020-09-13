version 1.0

task NgmutilsInterleave {
  input {
    File? _m_upstream
    File? _filerequired_downstream
    File? _output_filerequired
    File? _unpaired_filewrite
    Int? _delimiter_charthe
    Boolean? _forceforce_finishing
    Boolean? no_progress
    String? char
  }
  command <<<
    ngm_utils interleave \
      ~{char} \
      ~{if defined(_m_upstream) then ("-1 " +  '"' + _m_upstream + '"') else ""} \
      ~{if defined(_filerequired_downstream) then ("-2 " +  '"' + _filerequired_downstream + '"') else ""} \
      ~{if defined(_output_filerequired) then ("-o " +  '"' + _output_filerequired + '"') else ""} \
      ~{if defined(_unpaired_filewrite) then ("-u " +  '"' + _unpaired_filewrite + '"') else ""} \
      ~{if defined(_delimiter_charthe) then ("-d " +  '"' + _delimiter_charthe + '"') else ""} \
      ~{if (_forceforce_finishing) then "-f" else ""} \
      ~{if (no_progress) then "--noprogress" else ""}
  >>>
  parameter_meta {
    _m_upstream: ",  --m1 <file>\\n(required)  Upstream mates (FASTA/Q)"
    _filerequired_downstream: ",  --m2 <file>\\n(required)  Downstream mates (FASTA/Q)"
    _output_filerequired: ",  --output <file>\\n(required)  Output file"
    _unpaired_filewrite: ",  --unpaired <file>\\nWrite reads without mate to this file."
    _delimiter_charthe: ",  --delimiter <char>\\nThe character that precedes the 1 and 2 in the input files."
    _forceforce_finishing: ",  --force\\nForce finishing even if no pairs are found."
    no_progress: "Suppress progress output."
    char: ""
  }
  output {
    File out_stdout = stdout()
    File out__output_filerequired = "${in__output_filerequired}"
  }
}