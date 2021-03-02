version 1.0

task Fastr {
  input {
    Boolean? sequence
    Boolean? description
    Boolean? delete
    Boolean? squash
    Boolean? complement
    Boolean? no_replace
    Boolean? strict
    String? iupac
    String? de_gap
    String? am_big
    Boolean? man
    Boolean? log
    Boolean? use_name_default
    Boolean? include_comment_logfile
    Boolean? format
    Boolean? specify_type_sequence
    Boolean? fast_q
  }
  command <<<
    fastr \
      ~{if (sequence) then "--sequence" else ""} \
      ~{if (description) then "--description" else ""} \
      ~{if (delete) then "--delete" else ""} \
      ~{if (squash) then "--squash" else ""} \
      ~{if (complement) then "--complement" else ""} \
      ~{if (no_replace) then "--no-replace" else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if defined(iupac) then ("--iupac " +  '"' + iupac + '"') else ""} \
      ~{if defined(de_gap) then ("--degap " +  '"' + de_gap + '"') else ""} \
      ~{if defined(am_big) then ("--ambig " +  '"' + am_big + '"') else ""} \
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
    sequence: "Transliterate sequences (identifiers by default)."
    description: "Transliterate descriptions."
    delete: "Delete found but unreplaced characters."
    squash: "Squash duplicate replaced characters."
    complement: "Character complement SEARCHLIST. The last character of\\nREPLACELIST replaces all characters not in SEARCHLIST."
    no_replace: "Delete or squash characters in SEARCHLIST."
    strict: "Transliterate illegal sequence characters to \\\"N\\\" (DNA or RNA) or\\n\\\"X\\\" (protein). Takes precedence over --iupac. Other options\\ndisallowed in combination except --ambig and --fastq. For DNA,\\nequivalent to: \\\"fastr -sc ACTGactg\\- N\\\""
    iupac: "illegal sequence characters (including IUPAC\\nambiguities) to \\\"N\\\" (DNA or RNA) or \\\"X\\\" (protein). Other options\\ndisallowed in combination except --ambig and --fastq. For DNA,\\nequivalent to:\\n\\\"fastr -sc ACTGactgMRWSYKVHDBXNmrwsykvhdbxn\\- N\\\""
    de_gap: "gap characters \\\"-\\\" from each sequence. May only be\\ncombined with no other option except the --fastq option.\\nEquivalent to:\\n\\\"fastr -snD -- -\\\""
    am_big: "Use <char> to replace illegal characters instead of \\\"N\\\" or \\\"X\\\"\\nwith --strict or --iupac"
    man: "Print the manual page and exit."
    log: "Creates, or appends to, a generic FAST logfile in the current\\nworking directory. The logfile records date/time of execution,\\nfull command with options and arguments, and an optional\\ncomment."
    use_name_default: "[string], --logname=[string]\\nUse [string] as the name of the logfile. Default is\\n\\\"FAST.log.txt\\\"."
    include_comment_logfile: "[string], --comment=[string]\\nInclude comment [string] in logfile. No comment is saved by\\ndefault."
    format: "=[format]\\nUse alternative format for input. See man page for \\\"fasconvert\\\"\\nfor allowed formats. This is for convenience; the FAST tools are\\ndesigned to exchange data in Fasta format, and \\\"fasta\\\" is the\\ndefault format for this tool."
    specify_type_sequence: "[dna|rna|protein], --moltype=[dna|rna|protein]\\nSpecify the type of sequence on input (should not be needed in\\nmost cases, but sometimes Bioperl cannot guess and complains\\nwhen processing data)."
    fast_q: "Use fastq format as input and output.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}