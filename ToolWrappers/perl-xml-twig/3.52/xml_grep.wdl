version 1.0

task XmlGrep {
  input {
    Boolean? man
    Boolean? version
    File? root
    File? cond
    File? files
    Boolean? count
    Boolean? strict
    Boolean? date
    Int? encoding
    String? nb_results
    File? by_file
    String? wrap
    Boolean? nowrap
    String? descr
    File? group_by_file
    File? exclude
    String? pretty_print
    Boolean? text_only
    Boolean? html
    Boolean? tidy
  }
  command <<<
    xml_grep \
      ~{if (man) then "--man" else ""} \
      ~{if (version) then "--Version" else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if defined(cond) then ("--cond " +  '"' + cond + '"') else ""} \
      ~{if (files) then "--files" else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if (date) then "--date" else ""} \
      ~{if defined(encoding) then ("--encoding " +  '"' + encoding + '"') else ""} \
      ~{if defined(nb_results) then ("--nb_results " +  '"' + nb_results + '"') else ""} \
      ~{if (by_file) then "--by_file" else ""} \
      ~{if defined(wrap) then ("--wrap " +  '"' + wrap + '"') else ""} \
      ~{if (nowrap) then "--nowrap" else ""} \
      ~{if defined(descr) then ("--descr " +  '"' + descr + '"') else ""} \
      ~{if defined(group_by_file) then ("--group_by_file " +  '"' + group_by_file + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(pretty_print) then ("--pretty_print " +  '"' + pretty_print + '"') else ""} \
      ~{if (text_only) then "--text_only" else ""} \
      ~{if (html) then "--html" else ""} \
      ~{if (tidy) then "--Tidy" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    man: "full documentation"
    version: "display the tool version"
    root: "look for and return xml chunks matching <cond>\\nif neither \\\"--root\\\" nor \\\"--file\\\" are used then the element(s) that\\ntrigger the \\\"--cond\\\" option is (are) used. If \\\"--cond\\\" is not used\\nthen all elements matching the <cond> are returned\\nseveral \\\"--root\\\" can be provided"
    cond: "return the chunks (or file names) only if they contain elements\\nmatching <cond>\\nseveral \\\"--cond\\\" can be provided (in which case they are OR'ed)"
    files: "return only file names (do not generate an XML output)\\nusage of this option precludes using any of the options that define\\nthe XML output: \\\"--roots\\\", \\\"--encoding\\\", \\\"--wrap\\\", \\\"--group_by_file\\\"\\nor \\\"--pretty_print\\\""
    count: "return only the number of matches in each file\\nusage of this option precludes using any of the options that define\\nthe XML output: \\\"--roots\\\", \\\"--encoding\\\", \\\"--wrap\\\", \\\"--group_by_file\\\"\\nor \\\"--pretty_print\\\""
    strict: "without this option parsing errors are reported to STDOUT and the\\nfile skipped"
    date: "when on (by default) the wrapping element get a \\\"date\\\" attribute\\nthat gives the date the tool was run.\\nwith \\\"--nodate\\\" this attribute is not added, which can be useful if\\nyou need to compare 2 runs."
    encoding: "encoding of the xml output (utf-8 by default)"
    nb_results: "output only <nb> results"
    by_file: "output only <nb> results by file"
    wrap: "wrap the xml result in the provided tag (defaults to 'xml_grep')\\nIf wrap is set to an empty string (\\\"--wrap ''\\\") then the xml result\\nis not wrapped at all."
    nowrap: "same as using \\\"--wrap ''\\\": the xml result is not wrapped."
    descr: "attributes of the wrap tag (defaults to \\\"version=\\\"<VERSION>\\\"\\ndate=\\\"<date>\\\"\\\")"
    group_by_file: "wrap results for each files into a separate element. By default that\\nelement is named \\\"file\\\". It has an attribute named \\\"filename\\\" that\\ngives the name of the file.\\nthe short version of this option is -g"
    exclude: "same as using \\\"-v\\\" in grep: the elements that match the condition\\nare excluded from the result, the input file(s) is (are) otherwise\\nunchanged\\nthe short form of this option is -v"
    pretty_print: "pretty print the output using XML::Twig styles ('\\\"indented\\\"',\\n'\\\"record\\\"' or '\\\"record_c\\\"' are probably what you are looking for)\\nif the option is used but no style is given then '\\\"indented\\\"' is\\nused\\nshort form for this argument is -s"
    text_only: "Displays the text of the results, one by line."
    html: "Allow HTML input, files are converted using HTML::TreeBuilder"
    tidy: "Allow HTML input, files are converted using HTML::Tidy"
  }
  output {
    File out_stdout = stdout()
    File out_files = "${in_files}"
    File out_by_file = "${in_by_file}"
  }
}