version 1.0

task Merylimport {
  input {
    File? km_ers
    Int? size_setting_larger
    String? create_overwrite_database
    Boolean? multiset
    String? maxvalue
    Boolean? forward
    Boolean? reverse
    String? threads
    String? memory
    String entries_dot
  }
  command <<<
    meryl_import \
      ~{entries_dot} \
      ~{if defined(km_ers) then ("-kmers " +  '"' + km_ers + '"') else ""} \
      ~{if defined(size_setting_larger) then ("-k " +  '"' + size_setting_larger + '"') else ""} \
      ~{if defined(create_overwrite_database) then ("-output " +  '"' + create_overwrite_database + '"') else ""} \
      ~{if (multiset) then "-multiset" else ""} \
      ~{if defined(maxvalue) then ("-maxvalue " +  '"' + maxvalue + '"') else ""} \
      ~{if (forward) then "-forward" else ""} \
      ~{if (reverse) then "-reverse" else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(memory) then ("-memory " +  '"' + memory + '"') else ""}
  >>>
  parameter_meta {
    km_ers: "A file consisting of kmers and values, one per line, separated\\nby white space ('AGTTGCC 4').  Order of kmers is not important.\\nDuplicate kmers will be handled according to the -multiset\\noption.\\nA persistent value can be specified as '#<value>' (e.g., '#3')\\nAll kmers with no value after this line will use this value."
    size_setting_larger: "The size of a kmer, in bases.  Setting this larger than the\\nkmers in the input will probably lead to a crash.  Setting it\\nsmaller will result in only the left-most bases being used."
    create_overwrite_database: "Create (or overwrite) meryl database 'database.meryl'."
    multiset: "Write duplicate kmers in the input to the database as individual"
    maxvalue: "An optional memory and time optimization, useful if your values\\nare randomly distributed and below some known maximum value.\\nFor data whose values are the counts from actual data, it is\\nprobably best to not set this option."
    forward: "By default, the canonical kmer is loaded into the database.  These"
    reverse: "options force either the forward or reverse-complement kmer to be\\nloaded instead.  These options are mutually exclusive."
    threads: "Use <t> compute threads when sorting and writing data."
    memory: "(accepted, but not implemented, sorry)"
    entries_dot: "A kmer AGTTGCC in the input twice with values 4 and 7"
  }
  output {
    File out_stdout = stdout()
  }
}