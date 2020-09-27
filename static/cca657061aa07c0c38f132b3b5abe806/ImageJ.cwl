class: CommandLineTool
id: ImageJ.cwl
inputs:
- id: in_dry_run
  doc: show the command line, but do not run anything
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: in_info
  doc: informational output
  type: boolean
  inputBinding:
    prefix: --info
- id: in_debug
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_system
  doc: do not try to run bundled Java
  type: boolean
  inputBinding:
    prefix: --system
- id: in_java_home
  doc: specify JAVA_HOME explicitly
  type: File
  inputBinding:
    prefix: --java-home
- id: in_print_java_home
  doc: print ImageJ's idea of JAVA_HOME
  type: boolean
  inputBinding:
    prefix: --print-java-home
- id: in_print_ij_dir
  doc: print where ImageJ thinks it is located
  type: boolean
  inputBinding:
    prefix: --print-ij-dir
- id: in_headless
  doc: run in text mode
  type: boolean
  inputBinding:
    prefix: --headless
- id: in_ij_dir
  doc: "set the ImageJ directory to <path> (used to find\njars/, plugins/ and macros/)"
  type: File
  inputBinding:
    prefix: --ij-dir
- id: in_memory
  doc: set Java's heap size to <amount> (e.g. 512M)
  type: long
  inputBinding:
    prefix: --memory
- id: in_class_path
  doc: append <path> to the class path
  type: File
  inputBinding:
    prefix: --class-path
- id: in_jar_path
  doc: append .jar files in <path> to the class path
  type: File
  inputBinding:
    prefix: --jar-path
- id: in_pass_classpath
  doc: pass -classpath <classpath> to the main() method
  type: boolean
  inputBinding:
    prefix: --pass-classpath
- id: in_full_classpath
  doc: call the main class with the full ImageJ class path
  type: boolean
  inputBinding:
    prefix: --full-classpath
- id: in_dont_patch_ij_one
  doc: do not try to runtime-patch ImageJ1
  type: boolean
  inputBinding:
    prefix: --dont-patch-ij1
- id: in_ext
  doc: set Java's extension directory to <path>
  type: File
  inputBinding:
    prefix: --ext
- id: in_default_gc
  doc: "do not use advanced garbage collector settings by default\n(-Xincgc -XX:PermSize=128m)"
  type: boolean
  inputBinding:
    prefix: --default-gc
- id: in_gc_gone
  doc: use the G1 garbage collector
  type: boolean
  inputBinding:
    prefix: --gc-g1
- id: in_debug_gc
  doc: show debug info about the garbage collector on stderr
  type: boolean
  inputBinding:
    prefix: --debug-gc
- id: in_debugger
  doc: "[,suspend]\nstart the JVM in a mode so Eclipse's debugger can attach to it"
  type: string
  inputBinding:
    prefix: --debugger
- id: in_no_splash
  doc: suppress showing a splash screen upon startup
  type: boolean
  inputBinding:
    prefix: --no-splash
- id: in_ij_two
  doc: start ImageJ2 instead of ImageJ1
  type: boolean
  inputBinding:
    prefix: --ij2
- id: in_ij_one
  doc: start ImageJ1
  type: boolean
  inputBinding:
    prefix: --ij1
- id: in_allow_multiple
  doc: do not reuse existing ImageJ instance
  type: boolean
  inputBinding:
    prefix: --allow-multiple
- id: in_plugins
  doc: use <dir> to discover plugins
  type: string
  inputBinding:
    prefix: --plugins
- id: in_run
  doc: "[<arg>]\nrun <plugin> in ImageJ, optionally with arguments"
  type: string
  inputBinding:
    prefix: --run
- id: in_compile_and_run
  doc: compile and run <plugin> in ImageJ
  type: File
  inputBinding:
    prefix: --compile-and-run
- id: in_edit
  doc: "[<file>...]\nedit the given file in the script editor"
  type: boolean
  inputBinding:
    prefix: --edit
- id: in_main_class
  doc: (this is the
  type: string
  inputBinding:
    prefix: --main-class
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ImageJ
