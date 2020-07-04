version 1.0

task Mreps {
  input {
    String? specifies_sequence_command
    Boolean? fast_a
    String? res
    String? from
    String? to
    String? minsize
    String? maxsize
    String? min_period
    String? max_period
    String? exp
    Boolean? allow_small
    String? win
    Boolean? version
    File? xml_output
    Boolean? no_print
  }
  command <<<
    mreps \
      ~{if defined(specifies_sequence_command) then ("-s " +  '"' + specifies_sequence_command + '"') else ""} \
      ~{true="-fasta" false="" fast_a} \
      ~{if defined(res) then ("-res " +  '"' + res + '"') else ""} \
      ~{if defined(from) then ("-from " +  '"' + from + '"') else ""} \
      ~{if defined(to) then ("-to " +  '"' + to + '"') else ""} \
      ~{if defined(minsize) then ("-minsize " +  '"' + minsize + '"') else ""} \
      ~{if defined(maxsize) then ("-maxsize " +  '"' + maxsize + '"') else ""} \
      ~{if defined(min_period) then ("-minperiod " +  '"' + min_period + '"') else ""} \
      ~{if defined(max_period) then ("-maxperiod " +  '"' + max_period + '"') else ""} \
      ~{if defined(exp) then ("-exp " +  '"' + exp + '"') else ""} \
      ~{true="-allowsmall" false="" allow_small} \
      ~{if defined(win) then ("-win " +  '"' + win + '"') else ""} \
      ~{true="-version" false="" version} \
      ~{if defined(xml_output) then ("-xmloutput " +  '"' + xml_output + '"') else ""} \
      ~{true="-noprint" false="" no_print}
  >>>
  parameter_meta {
    specifies_sequence_command: ": specifies the sequence in command line"
    fast_a: ": allows DNA sequences in FASTA format "
    res: ": \"resolution\" (error level)"
    from: ": starting position n"
    to: ": end position n"
    minsize: ": repeats whose size is at least n"
    maxsize: ": repeats whose size is at most n"
    min_period: ": repeats whose period is at least n"
    max_period: ": repeats whose period is at most n"
    exp: ": repeats whose exponent is at least x"
    allow_small: ": output small repeats that can occur randomly"
    win: ": process by sliding windows of size 2*n overlaping by n"
    version: ": show version"
    xml_output: ": outputs to <file> in xml format"
    no_print: ": if specified, the repetition sequences will not be output "
  }
}