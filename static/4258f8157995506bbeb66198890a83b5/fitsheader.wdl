version 1.0

task Fitsheader {
  input {
    Int? extension
    String? keyword
    Boolean? print_headers_machinereadable
    Boolean? compressed
  }
  command <<<
    fitsheader \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(keyword) then ("--keyword " +  '"' + keyword + '"') else ""} \
      ~{if (print_headers_machinereadable) then "-t" else ""} \
      ~{if (compressed) then "--compressed" else ""}
  >>>
  parameter_meta {
    extension: "specify the extension by name or number; this argument\\ncan be repeated to select multiple extensions"
    keyword: "specify a keyword; this argument can be repeated to\\nselect multiple keywords; also supports wildcards"
    print_headers_machinereadable: "[FORMAT], --table [FORMAT]\\nprint the header(s) in machine-readable table format;\\nthe default format is \\\"ascii.fixed_width\\\" (can be\\n\\\"ascii.csv\\\", \\\"ascii.html\\\", \\\"ascii.latex\\\", \\\"fits\\\", etc)"
    compressed: "for compressed image data, show the true header which\\ndescribes the compression rather than the data\\n"
  }
  output {
    File out_stdout = stdout()
  }
}