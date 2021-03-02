version 1.0

task Fascut {
  input {
    Boolean? identifier
    Boolean? description
    Boolean? field
    String? split_on_regex
    String? join
    Boolean? strict
    Boolean? man
    Boolean? log
    Boolean? use_name_default
    Boolean? include_comment_logfile
    Boolean? format
    Boolean? specify_type_sequence
    Boolean? use_fastq_format
  }
  command <<<
    fascut \
      ~{if (identifier) then "--identifier" else ""} \
      ~{if (description) then "--description" else ""} \
      ~{if (field) then "--field" else ""} \
      ~{if defined(split_on_regex) then ("--split-on-regex " +  '"' + split_on_regex + '"') else ""} \
      ~{if defined(join) then ("--join " +  '"' + join + '"') else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if (man) then "--man" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if (use_name_default) then "-L" else ""} \
      ~{if (include_comment_logfile) then "-C" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (specify_type_sequence) then "-m" else ""} \
      ~{if (use_fastq_format) then "-q" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/perl-fast:1.06--pl526_0"
  }
  parameter_meta {
    identifier: "Cut identifiers by character. Use the -S option to alter how the\\nidentifier data is split."
    description: "Cut descriptions by character. Use the -f option to split\\ndescriptions by strings of whitespace instead. Use the -S option\\nto split the description with an arbitrary regex."
    field: "Cut descriptions by field. By default, the description is split\\non strings of white-space."
    split_on_regex: "Use regex to split data. Special characters in the regex option\\nargument must be quoted to protect them from the shell."
    join: "Paste selected fields together with string string for new\\ndescription. Default is a single space character \\\" \\\". Use \\\"\\t\\\"\\nto indicate a tab-character."
    strict: "This option will implement strict range checking on the\\ncoordinates. When used this option will skip any sequences for\\nwhich the coordinates are out of range (the default is to output\\nthe longest valid subsequence contained within the range)."
    man: "Print the manual page and exit."
    log: "Creates, or appends to, a generic FAST logfile in the current\\nworking directory. The logfile records date/time of execution,\\nfull command with options and arguments, and an optional\\ncomment."
    use_name_default: "[string], --logname=[string]\\nUse [string] as the name of the logfile. Default is\\n\\\"FAST.log.txt\\\"."
    include_comment_logfile: "[string], --comment=[string]\\nInclude comment [string] in logfile. No comment is saved by\\ndefault."
    format: "=[format]\\nUse alternative format for input. See man page for \\\"fasconvert\\\"\\nfor allowed formats. This is for convenience; the FAST tools are\\ndesigned to exchange data in Fasta format, and \\\"fasta\\\" is the\\ndefault format for this tool."
    specify_type_sequence: "[dna|rna|protein], --moltype=[dna|rna|protein]\\nSpecify the type of sequence on input (should not be needed in\\nmost cases, but sometimes Bioperl cannot guess and complains\\nwhen processing data)."
    use_fastq_format: "use fastq format as input and output."
  }
  output {
    File out_stdout = stdout()
  }
}