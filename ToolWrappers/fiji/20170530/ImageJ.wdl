version 1.0

task ImageJ {
  input {
    Boolean? dry_run
    Boolean? info
    Boolean? debug
    Boolean? system
    File? java_home
    Boolean? print_java_home
    Boolean? print_ij_dir
    Boolean? headless
    File? ij_dir
    Int? memory
    File? class_path
    File? jar_path
    Boolean? pass_classpath
    Boolean? full_classpath
    Boolean? dont_patch_ij_one
    File? ext
    Boolean? default_gc
    Boolean? gc_gone
    Boolean? debug_gc
    String? debugger
    Boolean? no_splash
    Boolean? ij_two
    Boolean? ij_one
    Boolean? allow_multiple
    String? plugins
    String? run
    File? compile_and_run
    Boolean? edit
    String? main_class
  }
  command <<<
    ImageJ \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (system) then "--system" else ""} \
      ~{if defined(java_home) then ("--java-home " +  '"' + java_home + '"') else ""} \
      ~{if (print_java_home) then "--print-java-home" else ""} \
      ~{if (print_ij_dir) then "--print-ij-dir" else ""} \
      ~{if (headless) then "--headless" else ""} \
      ~{if defined(ij_dir) then ("--ij-dir " +  '"' + ij_dir + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(class_path) then ("--class-path " +  '"' + class_path + '"') else ""} \
      ~{if defined(jar_path) then ("--jar-path " +  '"' + jar_path + '"') else ""} \
      ~{if (pass_classpath) then "--pass-classpath" else ""} \
      ~{if (full_classpath) then "--full-classpath" else ""} \
      ~{if (dont_patch_ij_one) then "--dont-patch-ij1" else ""} \
      ~{if defined(ext) then ("--ext " +  '"' + ext + '"') else ""} \
      ~{if (default_gc) then "--default-gc" else ""} \
      ~{if (gc_gone) then "--gc-g1" else ""} \
      ~{if (debug_gc) then "--debug-gc" else ""} \
      ~{if defined(debugger) then ("--debugger " +  '"' + debugger + '"') else ""} \
      ~{if (no_splash) then "--no-splash" else ""} \
      ~{if (ij_two) then "--ij2" else ""} \
      ~{if (ij_one) then "--ij1" else ""} \
      ~{if (allow_multiple) then "--allow-multiple" else ""} \
      ~{if defined(plugins) then ("--plugins " +  '"' + plugins + '"') else ""} \
      ~{if defined(run) then ("--run " +  '"' + run + '"') else ""} \
      ~{if defined(compile_and_run) then ("--compile-and-run " +  '"' + compile_and_run + '"') else ""} \
      ~{if (edit) then "--edit" else ""} \
      ~{if defined(main_class) then ("--main-class " +  '"' + main_class + '"') else ""}
  >>>
  parameter_meta {
    dry_run: "show the command line, but do not run anything"
    info: "informational output"
    debug: "verbose output"
    system: "do not try to run bundled Java"
    java_home: "specify JAVA_HOME explicitly"
    print_java_home: "print ImageJ's idea of JAVA_HOME"
    print_ij_dir: "print where ImageJ thinks it is located"
    headless: "run in text mode"
    ij_dir: "set the ImageJ directory to <path> (used to find\\njars/, plugins/ and macros/)"
    memory: "set Java's heap size to <amount> (e.g. 512M)"
    class_path: "append <path> to the class path"
    jar_path: "append .jar files in <path> to the class path"
    pass_classpath: "pass -classpath <classpath> to the main() method"
    full_classpath: "call the main class with the full ImageJ class path"
    dont_patch_ij_one: "do not try to runtime-patch ImageJ1"
    ext: "set Java's extension directory to <path>"
    default_gc: "do not use advanced garbage collector settings by default\\n(-Xincgc -XX:PermSize=128m)"
    gc_gone: "use the G1 garbage collector"
    debug_gc: "show debug info about the garbage collector on stderr"
    debugger: "[,suspend]\\nstart the JVM in a mode so Eclipse's debugger can attach to it"
    no_splash: "suppress showing a splash screen upon startup"
    ij_two: "start ImageJ2 instead of ImageJ1"
    ij_one: "start ImageJ1"
    allow_multiple: "do not reuse existing ImageJ instance"
    plugins: "use <dir> to discover plugins"
    run: "[<arg>]\\nrun <plugin> in ImageJ, optionally with arguments"
    compile_and_run: "compile and run <plugin> in ImageJ"
    edit: "[<file>...]\\nedit the given file in the script editor"
    main_class: "(this is the"
  }
  output {
    File out_stdout = stdout()
  }
}