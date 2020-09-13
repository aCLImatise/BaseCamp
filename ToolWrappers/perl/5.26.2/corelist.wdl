version 1.0

task Corelist {
  input {
    Boolean? lists_versions_given
    Boolean? finds_first_version
    Boolean? diff
    Boolean? man
    Boolean? lists_we_got
    Boolean? lists_you_pass
    Boolean? feature
    Boolean? upstream
    String? feature_name
  }
  command <<<
    corelist \
      ~{feature_name} \
      ~{if (lists_versions_given) then "-a" else ""} \
      ~{if (finds_first_version) then "-d" else ""} \
      ~{if (diff) then "--diff" else ""} \
      ~{if (man) then "-man" else ""} \
      ~{if (lists_we_got) then "-v" else ""} \
      ~{if (lists_you_pass) then "-r" else ""} \
      ~{if (feature) then "--feature" else ""} \
      ~{if (upstream) then "--upstream" else ""}
  >>>
  parameter_meta {
    lists_versions_given: "lists all versions of the given module (or the matching modules, in\\ncase you used a module regexp) in the perls Module::CoreList knows\\nabout.\\ncorelist -a Unicode\\nUnicode was first released with perl v5.6.2\\nv5.6.2     3.0.1\\nv5.8.0     3.2.0\\nv5.8.1     4.0.0\\nv5.8.2     4.0.0\\nv5.8.3     4.0.0\\nv5.8.4     4.0.1\\nv5.8.5     4.0.1\\nv5.8.6     4.0.1\\nv5.8.7     4.1.0\\nv5.8.8     4.1.0\\nv5.8.9     5.1.0\\nv5.9.0     4.0.0\\nv5.9.1     4.0.0\\nv5.9.2     4.0.1\\nv5.9.3     4.1.0\\nv5.9.4     4.1.0\\nv5.9.5     5.0.0\\nv5.10.0    5.0.0\\nv5.10.1    5.1.0\\nv5.11.0    5.1.0\\nv5.11.1    5.1.0\\nv5.11.2    5.1.0\\nv5.11.3    5.2.0\\nv5.11.4    5.2.0\\nv5.11.5    5.2.0\\nv5.12.0    5.2.0\\nv5.12.1    5.2.0\\nv5.12.2    5.2.0\\nv5.12.3    5.2.0\\nv5.12.4    5.2.0\\nv5.13.0    5.2.0\\nv5.13.1    5.2.0\\nv5.13.2    5.2.0\\nv5.13.3    5.2.0\\nv5.13.4    5.2.0\\nv5.13.5    5.2.0\\nv5.13.6    5.2.0\\nv5.13.7    6.0.0\\nv5.13.8    6.0.0\\nv5.13.9    6.0.0\\nv5.13.10   6.0.0\\nv5.13.11   6.0.0\\nv5.14.0    6.0.0\\nv5.14.1    6.0.0\\nv5.15.0    6.0.0"
    finds_first_version: "finds the first perl version where a module has been released by\\ndate, and not by version number (as is the default)."
    diff: "Given two versions of perl, this prints a human-readable table of\\nall module changes between the two. The output format may change in\\nthe future, and is meant for humans, not programs. For programs, use\\nthe Module::CoreList API."
    man: "all of the help"
    lists_we_got: "lists all of the perl release versions we got the CoreList for.\\nIf you pass a version argument (value of $], like 5.00503 or\\n5.008008), you get a list of all the modules and their respective\\nversions. (If you have the \\\"version\\\" module, you can also use\\nnew-style version numbers, like 5.8.8.)\\nIn module filtering context, it can be used as Perl version filter."
    lists_you_pass: "lists all of the perl releases and when they were released\\nIf you pass a perl version you get the release date for that version\\nonly."
    feature: "lists the first version bundle of each named feature given"
    upstream: "Shows if the given module is primarily maintained in perl core or on\\nCPAN and bug tracker URL."
    feature_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}