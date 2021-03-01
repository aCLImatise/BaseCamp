version 1.0

task Staghandlepl {
  input {
    Boolean? module
    Boolean? unit
    Boolean? writer
    Boolean? code_file
    Boolean? sub
    Boolean? trap
  }
  command <<<
    stag_handle_pl \
      ~{if (module) then "-module" else ""} \
      ~{if (unit) then "-unit" else ""} \
      ~{if (writer) then "-writer" else ""} \
      ~{if (code_file) then "-codefile" else ""} \
      ~{if (sub) then "-sub" else ""} \
      ~{if (trap) then "-trap" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    module: "|m PERLMODULE\\nA module that is used to transform the input events the module\\nshould inherit from Data::Stag::BaseHandler"
    unit: "|u NODE_NAME\\n(you should always use this option if you specify -m)\\nthis is the unit that gets passed to the handler/transformer. this\\nwill get set automatically if you use the the -c, -s or -t options\\nmultiple units can be set\\n-u foo -u bar -u boz"
    writer: "|w WRITER\\nwriter for final transformed tree; can be xml, sxpr or itext"
    code_file: "|c FILE\\na file containing a perlhashref containing event handlers - see\\nbelow"
    sub: "|s PERL\\na perl hashref containing handlers"
    trap: "|t ELEMENT=SUB"
  }
  output {
    File out_stdout = stdout()
  }
}