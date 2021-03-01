version 1.0

task Resgen2 {
  input {
    File? compile
    Boolean? use_sourcepath
    Boolean? define
    String res_gen
    String source_do_text
  }
  command <<<
    resgen2 \
      ~{res_gen} \
      ~{source_do_text} \
      ~{if (compile) then "-compile" else ""} \
      ~{if (use_sourcepath) then "-usesourcepath" else ""} \
      ~{if (define) then "-define" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    compile: ", /compile\\ntakes a list of .resX or .txt files to convert to .resources files\\nin one bulk operation, replacing .ext with .resources for the\\noutput file name (if not set)."
    use_sourcepath: ", /useSourcePath\\nto resolve relative file paths, use the directory of the resource\\nfile as current directory."
    define: ", /define:SYMBOL1,SYMBOL2\\ntakes a comma-separated list of symbols that control conditional\\ninclusion of resources file. The source file needs to be in\\nthe '.txt' format.\\nResources enclosed with #ifdef SYMBOL1 ... #endif directives\\nwill be included in the destination file when SYMBOL1 has\\nbeen specified using /define option.\\nResources enclosed with #if ! SYMBOL2 ... #endif directives\\nwill be included only if SYMBOL2 has NOT been specified.\\n"
    res_gen: ""
    source_do_text: ""
  }
  output {
    File out_stdout = stdout()
    File out_compile = "${in_compile}"
  }
}