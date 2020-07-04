version 1.0

task XmlGrep {
  input {
    Boolean? man
    Boolean? version
    String? root
    String? cond
    Boolean? files
    Boolean? count
    Boolean? strict
    Boolean? date
    String? encoding
    String? nb_results
    Boolean? by_file
    String? wrap
    Boolean? nowrap
    String? descr
    String? group_by_file
    String? exclude
    String? pretty_print
    Boolean? text_only
    Boolean? html
    Boolean? tidy
  }
  command <<<
    xml_grep \
      ~{true="--man" false="" man} \
      ~{true="--Version" false="" version} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if defined(cond) then ("--cond " +  '"' + cond + '"') else ""} \
      ~{true="--files" false="" files} \
      ~{true="--count" false="" count} \
      ~{true="--strict" false="" strict} \
      ~{true="--date" false="" date} \
      ~{if defined(encoding) then ("--encoding " +  '"' + encoding + '"') else ""} \
      ~{if defined(nb_results) then ("--nb_results " +  '"' + nb_results + '"') else ""} \
      ~{true="--by_file" false="" by_file} \
      ~{if defined(wrap) then ("--wrap " +  '"' + wrap + '"') else ""} \
      ~{true="--nowrap" false="" nowrap} \
      ~{if defined(descr) then ("--descr " +  '"' + descr + '"') else ""} \
      ~{if defined(group_by_file) then ("--group_by_file " +  '"' + group_by_file + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(pretty_print) then ("--pretty_print " +  '"' + pretty_print + '"') else ""} \
      ~{true="--text_only" false="" text_only} \
      ~{true="--html" false="" html} \
      ~{true="--Tidy" false="" tidy}
  >>>
  parameter_meta {
    man: "full documentation"
    version: "display the tool version"
    root: "look for and return xml chunks matching <cond> if neither \"--root\" nor \"--file\" are used then the element(s) that trigger the \"--cond\" option is (are) used. If \"--cond\" is not used then all elements matching the <cond> are returned several \"--root\" can be provided"
    cond: "return the chunks (or file names) only if they contain elements matching <cond> several \"--cond\" can be provided (in which case they are OR'ed)"
    files: "return only file names (do not generate an XML output) usage of this option precludes using any of the options that define the XML output: \"--roots\", \"--encoding\", \"--wrap\", \"--group_by_file\" or \"--pretty_print\""
    count: "return only the number of matches in each file usage of this option precludes using any of the options that define the XML output: \"--roots\", \"--encoding\", \"--wrap\", \"--group_by_file\" or \"--pretty_print\""
    strict: "without this option parsing errors are reported to STDOUT and the file skipped"
    date: "when on (by default) the wrapping element get a \"date\" attribute that gives the date the tool was run. with \"--nodate\" this attribute is not added, which can be useful if you need to compare 2 runs."
    encoding: "encoding of the xml output (utf-8 by default)"
    nb_results: "output only <nb> results"
    by_file: "output only <nb> results by file"
    wrap: "wrap the xml result in the provided tag (defaults to 'xml_grep') If wrap is set to an empty string (\"--wrap ''\") then the xml result is not wrapped at all."
    nowrap: "same as using \"--wrap ''\": the xml result is not wrapped."
    descr: "attributes of the wrap tag (defaults to \"version=\"<VERSION>\" date=\"<date>\"\")"
    group_by_file: "wrap results for each files into a separate element. By default that element is named \"file\". It has an attribute named \"filename\" that gives the name of the file. the short version of this option is -g"
    exclude: "same as using \"-v\" in grep: the elements that match the condition are excluded from the result, the input file(s) is (are) otherwise unchanged the short form of this option is -v"
    pretty_print: "pretty print the output using XML::Twig styles ('\"indented\"', '\"record\"' or '\"record_c\"' are probably what you are looking for) if the option is used but no style is given then '\"indented\"' is used short form for this argument is -s"
    text_only: "Displays the text of the results, one by line."
    html: "Allow HTML input, files are converted using HTML::TreeBuilder"
    tidy: "Allow HTML input, files are converted using HTML::Tidy"
  }
}