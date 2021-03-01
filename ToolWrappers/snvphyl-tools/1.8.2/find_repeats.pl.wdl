version 1.0

task Findrepeatspl {
  input {
    Boolean? min_length
    Boolean? min_pid
    Boolean? keep_temp
  }
  command <<<
    find_repeats_pl \
      ~{if (min_length) then "--min-length" else ""} \
      ~{if (min_pid) then "--min-pid" else ""} \
      ~{if (keep_temp) then "--keep-temp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_length: ": Minimum length of repeat region (150)."
    min_pid: ": Minimum PID of repeat region (90)."
    keep_temp: ": Keep around temporary nucmer/coords files (no)."
  }
  output {
    File out_stdout = stdout()
  }
}