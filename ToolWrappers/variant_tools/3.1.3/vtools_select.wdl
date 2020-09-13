version 1.0

task VtoolsSelect {
  input {
    Boolean? limiting_variants_samples
    Boolean? destination_variant_table
    Boolean? count
    Boolean? list_will_outputted
    String? verbosity
    Boolean? header
    String? delimiter
    Float? precision
    String? na
    String? limit
    String? build
    Boolean? group_output_fields
    Boolean? all
    Array[String] order_by
    String from_table
    String condition
  }
  command <<<
    vtools select \
      ~{from_table} \
      ~{condition} \
      ~{if (limiting_variants_samples) then "-s" else ""} \
      ~{if (destination_variant_table) then "-t" else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if (list_will_outputted) then "-o" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(na) then ("--na " +  '"' + na + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(build) then ("--build " +  '"' + build + '"') else ""} \
      ~{if (group_output_fields) then "-g" else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if defined(order_by) then ("--order_by " +  '"' + order_by + '"') else ""}
  >>>
  parameter_meta {
    limiting_variants_samples: "[COND [COND ...]], --samples [COND [COND ...]]\\nLimiting variants from samples that match conditions\\nthat use columns shown in command 'vtools show sample'\\n(e.g. 'aff=1', 'filename like \\\"MG%\\\"')."
    destination_variant_table: "[TABLE [DESC ...]], --to_table [TABLE [DESC ...]]\\nDestination variant table."
    count: "Output number of variant, which is a shortcut to '--\\noutput count(1)'."
    list_will_outputted: "[FIELDS [FIELDS ...]], --output [FIELDS [FIELDS ...]]\\nA list of fields that will be outputted. SQL-\\ncompatible expressions or functions such as \\\"pos-1\\\",\\n\\\"count(1)\\\" or \\\"sum(num)\\\" are also allowed."
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1)."
    header: "[HEADER [HEADER ...]]\\nA complete header or a list of names that will be\\njoined by a delimiter (parameter --delimiter). If a\\nspecial name - is specified, the header will be read\\nfrom the standard input, which is the preferred way to\\nspecify large multi-line headers (e.g. cat myheader |\\nvtools export --header -). If this parameter is given\\nwithout parameter, a default header will be derived\\nfrom field names."
    delimiter: "Delimiter use to separate columns of output. The\\ndefault output uses tabs to delimit columns padded to\\nthe same width by spaces. You can use '-d,' for csv\\noutput, or -d'\\t' for unpadded tab-delimited output."
    precision: "Precision used to output float numbers. The default\\nvalue is None which uses system default (e.g. whatever\\nstr(number) outputs). You can set it to a positive\\nnumber (e.g. 4) to limit the number of digits to\\noutput."
    na: "Output string for missing value"
    limit: "Limit output to the first N records."
    build: "Output reference genome. If set to alternative build,\\nchr and pos in the fields will be replaced by alt_chr\\nand alt_pos"
    group_output_fields: "[FIELD [FIELD ...]], --group_by [FIELD [FIELD ...]], --group-by [FIELD [FIELD ...]]\\nGroup output by fields. This option is useful for\\naggregation output where summary statistics are\\ngrouped by one or more fields."
    all: "Variant tools by default output only one of the\\nrecords if a variant matches multiple records in an\\nannotation database. This option tells variant tools\\nto output all matching records."
    order_by: "Order output by specified fields in ascending order,\\nor descending order if field name is followed by DESC\\n(e.g. --order_by 'num DESC')\\n"
    from_table: "Source variant table."
    condition: "Conditions by which variants are selected. Multiple\\narguments are automatically joined by 'AND' so 'OR'\\nconditions should be provided by a single argument\\nwith conditions joined by 'OR'. If unspecified, all\\nvariants (except those excluded by parameter\\n--samples) will be selected."
  }
  output {
    File out_stdout = stdout()
  }
}