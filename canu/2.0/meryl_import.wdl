version 1.0

task MerylImport {
  input {
    String? km_ers
    Int? size_setting_larger
    String? create_overwrite_database
    Boolean? multiset
    String? maxvalue
    Boolean? forward
    Boolean? reverse
    String? threads
    String? memory
  }
  command <<<
    meryl-import \
      ~{if defined(km_ers) then ("-kmers " +  '"' + km_ers + '"') else ""} \
      ~{if defined(size_setting_larger) then ("-k " +  '"' + size_setting_larger + '"') else ""} \
      ~{if defined(create_overwrite_database) then ("-output " +  '"' + create_overwrite_database + '"') else ""} \
      ~{true="-multiset" false="" multiset} \
      ~{if defined(maxvalue) then ("-maxvalue " +  '"' + maxvalue + '"') else ""} \
      ~{true="-forward" false="" forward} \
      ~{true="-reverse" false="" reverse} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(memory) then ("-memory " +  '"' + memory + '"') else ""}
  >>>
  parameter_meta {
    km_ers: "A file consisting of kmers and values, one per line, separated by white space ('AGTTGCC 4').  Order of kmers is not important. Duplicate kmers will be handled according to the -multiset option. A persistent value can be specified as '#<value>' (e.g., '#3') All kmers with no value after this line will use this value."
    size_setting_larger: "The size of a kmer, in bases.  Setting this larger than the kmers in the input will probably lead to a crash.  Setting it smaller will result in only the left-most bases being used."
    create_overwrite_database: "Create (or overwrite) meryl database 'database.meryl'."
    multiset: "Write duplicate kmers in the input to the database as individual entries.  A kmer AGTTGCC in the input twice with values 4 and 7 will be listed in the output database twice, once with value 4, and once with value 7.  Without this option, the values will be summed: AGTTGCC will be listed once with value 11."
    maxvalue: "An optional memory and time optimization, useful if your values are randomly distributed and below some known maximum value. For data whose values are the counts from actual data, it is probably best to not set this option."
    forward: "By default, the canonical kmer is loaded into the database.  These"
    reverse: "options force either the forward or reverse-complement kmer to be loaded instead.  These options are mutually exclusive."
    threads: "Use <t> compute threads when sorting and writing data."
    memory: "(accepted, but not implemented, sorry)"
  }
}