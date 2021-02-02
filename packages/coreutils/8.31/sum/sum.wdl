version 1.0

task Sum {
  input {
    Boolean? use_bsd_use
    Boolean? sysv
  }
  command <<<
    sum \
      ~{if (use_bsd_use) then "-r" else ""} \
      ~{if (sysv) then "--sysv" else ""}
  >>>
  parameter_meta {
    use_bsd_use: "use BSD sum algorithm, use 1K blocks"
    sysv: "use System V sum algorithm, use 512 bytes blocks"
  }
  output {
    File out_stdout = stdout()
  }
}