version 1.0

task Jjs {
  input {
    Boolean? dnamevalue_set_property
    Boolean? add_modules
    Boolean? classpath
    Boolean? dump_on_error
    Boolean? full_version
    Boolean? fx
    Boolean? language
    Boolean? module_path
    Boolean? no_deprecation_warning
    Boolean? optimistic_types
    Boolean? scripting
    Boolean? strict
    Boolean? timezone
    Boolean? version
  }
  command <<<
    jjs \
      ~{if (dnamevalue_set_property) then "-D" else ""} \
      ~{if (add_modules) then "--add-modules" else ""} \
      ~{if (classpath) then "-classpath" else ""} \
      ~{if (dump_on_error) then "-dump-on-error" else ""} \
      ~{if (full_version) then "-fullversion" else ""} \
      ~{if (fx) then "-fx" else ""} \
      ~{if (language) then "--language" else ""} \
      ~{if (module_path) then "--module-path" else ""} \
      ~{if (no_deprecation_warning) then "--no-deprecation-warning" else ""} \
      ~{if (optimistic_types) then "--optimistic-types" else ""} \
      ~{if (scripting) then "-scripting" else ""} \
      ~{if (strict) then "-strict" else ""} \
      ~{if (timezone) then "-timezone" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    dnamevalue_set_property: "(-Dname=value. Set a system property. This option can be repeated.)"
    add_modules: "(--add-modules modules. Specify the root user java modules.)"
    classpath: "(-cp path. Specify where to find user class files.)"
    dump_on_error: "(Dump a stack trace on errors.)\\nparam: [true|false]   default: false"
    full_version: "(Print full version info of Nashorn.)\\nparam: [true|false]   default: false"
    fx: "(Launch script as an fx application.)\\nparam: [true|false]   default: false"
    language: "(Specify ECMAScript language version.)\\nparam: [es5|es6]   default: es5"
    module_path: "(--module-path path. Specify where to find user java modules.)"
    no_deprecation_warning: "(Do not show nashorn deprecation warning.)\\nparam: [true|false]   default: false"
    optimistic_types: "(Use optimistic type assumptions with deoptimizing recompilation.\\nThis makes the compiler try, for any program symbol whose type cannot\\nbe proven at compile time, to type it as narrow and primitive as\\npossible. If the runtime encounters an error because symbol type\\nis too narrow, a wider method will be generated until steady stage\\nis reached. While this produces as optimal Java Bytecode as possible,\\nerroneous type guesses will lead to longer warmup. Optimistic typing\\nis currently enabled by default, but can be disabled for faster\\nstartup performance.)\\nparam: [true|false]   default: true"
    scripting: "(Enable scripting features.)\\nparam: [true|false]   default: false"
    strict: "(Run scripts in strict mode.)\\nparam: [true|false]   default: false"
    timezone: "(Set timezone for script execution.)\\nparam: <timezone>   default: GMT"
    version: "(Print version info of Nashorn.)\\nparam: [true|false]   default: false\\n"
  }
  output {
    File out_stdout = stdout()
  }
}