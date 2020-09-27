version 1.0

task InitialTrim {
  input {
    String? find_quality_points
    String? log
    String? frg
    Boolean? uselessly_verbose_debugging
    Boolean? replace
    Boolean? update
  }
  command <<<
    initialTrim \
      ~{if defined(find_quality_points) then ("-q " +  '"' + find_quality_points + '"') else ""} \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""} \
      ~{if defined(frg) then ("-frg " +  '"' + frg + '"') else ""} \
      ~{if (uselessly_verbose_debugging) then "-v" else ""} \
      ~{if (replace) then "-replace" else ""} \
      ~{if (update) then "-update" else ""}
  >>>
  parameter_meta {
    find_quality_points: "Find quality trim points using 'quality' as the base."
    log: "Report the iid, original trim and new quality trim"
    frg: "Operate on this gkpStore"
    uselessly_verbose_debugging: "Be uselessly verbose (for debugging)"
    replace: ""
    update: ""
  }
  output {
    File out_stdout = stdout()
  }
}