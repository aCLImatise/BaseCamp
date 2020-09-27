version 1.0

task Pod2man {
  input {
    Boolean? verbose
    Boolean? utf_eight
    Boolean? stderr
    String? rquote
    String? l_quote
    String? section
    String? release
    Boolean? no_urls
    String? name
    String? fixed_bold_italic
    String? fixed_bold
    String? fixed
    String? date
    String? center
    String? var_output
  }
  command <<<
    pod2man \
      ~{var_output} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (utf_eight) then "--utf8" else ""} \
      ~{if (stderr) then "--stderr" else ""} \
      ~{if defined(rquote) then ("--rquote " +  '"' + rquote + '"') else ""} \
      ~{if defined(l_quote) then ("--lquote " +  '"' + l_quote + '"') else ""} \
      ~{if defined(section) then ("--section " +  '"' + section + '"') else ""} \
      ~{if defined(release) then ("--release " +  '"' + release + '"') else ""} \
      ~{if (no_urls) then "--nourls" else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(fixed_bold_italic) then ("--fixedbolditalic " +  '"' + fixed_bold_italic + '"') else ""} \
      ~{if defined(fixed_bold) then ("--fixedbold " +  '"' + fixed_bold + '"') else ""} \
      ~{if defined(fixed) then ("--fixed " +  '"' + fixed + '"') else ""} \
      ~{if defined(date) then ("--date " +  '"' + date + '"') else ""} \
      ~{if defined(center) then ("--center " +  '"' + center + '"') else ""}
  >>>
  parameter_meta {
    verbose: ""
    utf_eight: ""
    stderr: ""
    rquote: ""
    l_quote: ""
    section: ""
    release: ""
    no_urls: ""
    name: ""
    fixed_bold_italic: ""
    fixed_bold: ""
    fixed: ""
    date: ""
    center: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}