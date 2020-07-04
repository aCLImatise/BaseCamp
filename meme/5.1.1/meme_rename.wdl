version 1.0

task MemeRename {
  input {
    String options
  }
  command <<<
    meme-rename \
      ~{options}
  >>>
  parameter_meta {
    options: "<dir>+          full path of MEME Suite program output directory [-d <dest>]     destination directory; default: working directory  [-h]            print this message Copy HTML files from MEME Suite programs to files with distinct names to  make it easier to share them: <dest>/<program>.<last_dir>[.<arg_order_num>].html where <last_dir> is the last directory on the path, and <program> is the name of the MEME Suite program. If the <program>.<last_dir> combination is not unique then a number based on the argument order is added."
  }
}