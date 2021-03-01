version 1.0

task H5watch {
  input {
    Boolean? label
    Boolean? simple
    Boolean? dim
    Int? width
    Int? polling
    Int? fields
    String options
  }
  command <<<
    h5watch \
      ~{options} \
      ~{if (label) then "--label" else ""} \
      ~{if (simple) then "--simple" else ""} \
      ~{if (dim) then "--dim" else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(polling) then ("--polling " +  '"' + polling + '"') else ""} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    label: "Label members of compound typed dataset."
    simple: "Use a machine-readable output format."
    dim: "Monitor changes in size of dataset dimensions only."
    width: "Set the number of columns to N for output.\\nA value of 0 sets the number of columns to the\\nmaximum (65535). The default width is 80 columns."
    polling: "Set the polling interval to N (in seconds) when the\\ndataset will be checked for appended data.  The default\\npolling interval is 1."
    fields: "Display data for the fields specified in <list_of_fields>\\nfor a compound data type.  <list_of_fields> can be\\nspecified as follows:\\n1) A comma-separated list of field names in a\\ncompound data type.  \\\",\\\" is the separator\\nfor field names while \\\".\\\" is the separator\\nfor a nested field.\\n2) A single field name in a compound data type.\\nCan use this option multiple times.\\nNote that backslash is the escape character to avoid\\ncharacters in field names that conflict with the tool's\\nseparators."
    options: "--help            Print a usage message and exit."
  }
  output {
    File out_stdout = stdout()
  }
}