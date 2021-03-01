version 1.0

task Fascomp {
  input {
    Boolean? normalize
    Boolean? table
    Boolean? use_string_join
    Boolean? strict
    Boolean? iupac
    String? alphabet
    Int? precision
    Int? width
    Boolean? man
    Boolean? log
    Boolean? use_name_default
    Boolean? include_comment_logfile
    Boolean? format
    Boolean? specify_type_sequence
    Boolean? fast_q
  }
  command <<<
    fascomp \
      ~{if (normalize) then "--normalize" else ""} \
      ~{if (table) then "--table" else ""} \
      ~{if (use_string_join) then "-j" else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if (iupac) then "--iupac" else ""} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if (man) then "--man" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if (use_name_default) then "-L" else ""} \
      ~{if (include_comment_logfile) then "-C" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (specify_type_sequence) then "-m" else ""} \
      ~{if (fast_q) then "--fastq" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/perl-fast:1.06--pl526_0"
  }
  parameter_meta {
    normalize: "Compute relative frequencies."
    table: "Output a table to STDOUT."
    use_string_join: "[string] --join=[string]\\nUse <string> to join tagged values in descriptions. Use \\\"\\t\\\" to\\nindicate a tab-character."
    strict: "Output moltype-dependent character header for table-mode."
    iupac: "Output character header including ambiguities for table-mode."
    alphabet: "Tally only characters if they are in the set <string>, as in\\n\\\"ACGT-\\\"."
    precision: "Print relative frequencies with <int> digits after the decimal\\npoint."
    width: "Print frequencies in fields of width <int>"
    man: "Print the manual page and exit."
    log: "Creates, or appends to, a generic FAST logfile in the current\\nworking directory. The logfile records date/time of execution,\\nfull command with options and arguments, and an optional\\ncomment."
    use_name_default: "[string], --logname=[string]\\nUse [string] as the name of the logfile. Default is\\n\\\"FAST.log.txt\\\"."
    include_comment_logfile: "[string], --comment=[string]\\nInclude comment [string] in logfile. No comment is saved by\\ndefault."
    format: "=[format]\\nUse alternative format for input. See man page for \\\"fasconvert\\\"\\nfor allowed formats. This is for convenience; the FAST tools are\\ndesigned to exchange data in Fasta format, and \\\"fasta\\\" is the\\ndefault format for this tool."
    specify_type_sequence: "[dna|rna|protein], --moltype=[dna|rna|protein]\\nSpecify the type of sequence on input (should not be needed in\\nmost cases, but sometimes Bioperl cannot guess and complains\\nwhen processing data)."
    fast_q: "use fastq format as input and output.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}