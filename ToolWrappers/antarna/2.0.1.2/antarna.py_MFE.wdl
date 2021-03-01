version 1.0

task AntarnapyMFE {
  input {
    String? cstr
    Boolean? pk_parameter
    File? pk_program
    File? hot_knots_path
    String? strategy
    Boolean? p
    String installed_dot
  }
  command <<<
    antarna_py MFE \
      ~{installed_dot} \
      ~{if defined(cstr) then ("--Cstr " +  '"' + cstr + '"') else ""} \
      ~{if (pk_parameter) then "--pkparameter" else ""} \
      ~{if defined(pk_program) then ("--pkprogram " +  '"' + pk_program + '"') else ""} \
      ~{if defined(hot_knots_path) then ("--HotKnots_PATH " +  '"' + hot_knots_path + '"') else ""} \
      ~{if defined(strategy) then ("--strategy " +  '"' + strategy + '"') else ""} \
      ~{if (p) then "-p" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cstr: "Structure constraint using RNA dotbracket notation\\nwith fuzzy block constraint. (TYPE: str)"
    pk_parameter: "Enable optimized parameters for the usage of pseudo\\nknots (Further parameter input ignored)."
    pk_program: "Select a pseudoknot prediction program. If HotKnots is\\nused, please specify the bin folder of Hotknots with\\nabsolute path using HK_PATH argument. (DEFAULT: pKiss,\\nTYPE: str, Choice: [pKiss|HotKnots|IPKnot])"
    hot_knots_path: "Set HotKnots absolute path, like\\n/path/to/HotKnots/bin. If HotKnots is used, please\\nspecify the bin folder of Hotknots with absolute path\\nusing HK_PATH argument. (DEFAULT: , TYPE: str"
    strategy: "Defining the pKiss folding strategy. (DEFAULT: A,\\nTYPE: str)\\n"
    p: ""
    installed_dot: "-p, --pseudoknots     Switch to pseudoknot based prediction using pKiss.\\nCheck the pseudoknot parameter usage!!!"
  }
  output {
    File out_stdout = stdout()
  }
}