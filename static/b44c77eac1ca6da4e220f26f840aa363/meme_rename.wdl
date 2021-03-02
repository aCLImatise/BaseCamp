version 1.0

task Memerename {
  input {
    String options
  }
  command <<<
    meme_rename \
      ~{options}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    options: "<dir>+          full path of MEME Suite program output directory\\n[-d <dest>]     destination directory; default: working directory\\n[-h]            print this message\\nCopy HTML files from MEME Suite programs to files with distinct names to\\nmake it easier to share them:\\n<dest>/<program>.<last_dir>[.<arg_order_num>].html\\nwhere <last_dir> is the last directory on the path, and <program> is the\\nname of the MEME Suite program. If the <program>.<last_dir> combination is\\nnot unique then a number based on the argument order is added.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}