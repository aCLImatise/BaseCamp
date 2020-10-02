version 1.0

task ProtkSetuprb {
  input {
    Boolean? backtrace
    Boolean? all
  }
  command <<<
    protk_setup_rb \
      ~{if (backtrace) then "--backtrace" else ""} \
      ~{if (all) then "--all" else ""}
  >>>
  parameter_meta {
    backtrace: "=[OUT]            Enable full backtrace.  OUT can be stderr (default) or stdout.\\n--comments                   Show commented tasks only\\n--job-stats [LEVEL]          Display job statistics. LEVEL=history displays a complete job list\\n--rules                      Trace the rules resolution.\\n--suppress-backtrace PATTERN Suppress backtrace lines matching regexp PATTERN. Ignored if --trace is on."
    all: "Show all tasks, even uncommented ones (in combination with -T or -D)\\n-B, --build-all                  Build all prerequisites, including those which are up-to-date.\\n-D, --describe [PATTERN]         Describe the tasks (matching optional PATTERN), then exit.\\n-e, --execute CODE               Execute some Ruby code and exit.\\n-E, --execute-continue CODE      Execute some Ruby code, then continue with normal task processing.\\n-f, --rakefile [FILENAME]        Use FILENAME as the rakefile to search for.\\n-G, --no-system, --nosystem      Use standard project Rakefile search paths, ignore system wide rakefiles.\\n-g, --system                     Using system wide (global) rakefiles (usually '~/.rake/*.rake').\\n-I, --libdir LIBDIR              Include LIBDIR in the search path for required modules.\\n-j, --jobs [NUMBER]              Specifies the maximum number of tasks to execute in parallel. (default is number of CPU cores + 4)\\n-m, --multitask                  Treat all tasks as multitasks.\\n-n, --dry-run                    Do a dry run without executing actions.\\n-N, --no-search, --nosearch      Do not search parent directories for the Rakefile.\\n-P, --prereqs                    Display the tasks and dependencies, then exit.\\n-p, --execute-print CODE         Execute some Ruby code, print the result, then exit.\\n-q, --quiet                      Do not log messages to standard output.\\n-r, --require MODULE             Require MODULE before executing rakefile.\\n-R, --rakelibdir RAKELIBDIR,     Auto-import any .rake files in RAKELIBDIR. (default is 'rakelib')\\n--rakelib\\n-s, --silent                     Like --quiet, but also suppresses the 'in directory' announcement.\\n-t, --trace=[OUT]                Turn on invoke/execute tracing, enable full backtrace. OUT can be stderr (default) or stdout.\\n-T, --tasks [PATTERN]            Display the tasks (matching optional PATTERN) with descriptions, then exit. -AT combination displays all of tasks contained no description.\\n-v, --verbose                    Log message to standard output.\\n-V, --version                    Display the program version.\\n-W, --where [PATTERN]            Describe the tasks (matching optional PATTERN), then exit.\\n-X, --no-deprecation-warnings    Disable the deprecation warnings.\\n-h, -H, --help                   Display this help message.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}