version 1.0

task Xtractprotos {
  input {
    Boolean? preprocess_only_compile
    Boolean? compile_only_assemble
    Boolean? compile_assemble_link
    File? place_output_file
    Boolean? pie
    Boolean? shared
    String? specify_language_following
    String cpp
    File file_dot_dot_dot
  }
  command <<<
    xtractprotos \
      ~{cpp} \
      ~{file_dot_dot_dot} \
      ~{true="-E" false="" preprocess_only_compile} \
      ~{true="-S" false="" compile_only_assemble} \
      ~{true="-c" false="" compile_assemble_link} \
      ~{if defined(place_output_file) then ("-o " +  '"' + place_output_file + '"') else ""} \
      ~{true="-pie" false="" pie} \
      ~{true="-shared" false="" shared} \
      ~{if defined(specify_language_following) then ("-x " +  '"' + specify_language_following + '"') else ""}
  >>>
  parameter_meta {
    preprocess_only_compile: "Preprocess only; do not compile, assemble or link."
    compile_only_assemble: "Compile only; do not assemble or link."
    compile_assemble_link: "Compile and assemble, but do not link."
    place_output_file: "Place the output into <file>."
    pie: "Create a dynamically linked position independent executable."
    shared: "Create a shared library."
    specify_language_following: "Specify the language of the following input files. Permissible languages include: c c++ assembler none 'none' means revert to the default behavior of guessing the language based on the file's extension."
    cpp: ""
    file_dot_dot_dot: ""
  }
}