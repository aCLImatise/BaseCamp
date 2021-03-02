version 1.0

task OncogeminiUpdate {
  input {
    Boolean? devel
    Boolean? no_data
    String? extra
    Directory? tool_dir
    Boolean? data_only
    String release
  }
  command <<<
    oncogemini update \
      ~{release} \
      ~{if (devel) then "--devel" else ""} \
      ~{if (no_data) then "--nodata" else ""} \
      ~{if defined(extra) then ("--extra " +  '"' + extra + '"') else ""} \
      ~{if defined(tool_dir) then ("--tooldir " +  '"' + tool_dir + '"') else ""} \
      ~{if (data_only) then "--dataonly" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    devel: "Get the latest development version instead of the"
    no_data: "Do not install data dependencies"
    extra: "Add additional non-standard genome annotations to\\ninclude"
    tool_dir: "Directory for third party tools (ie /usr/local) update"
    data_only: ""
    release: "--dataonly            Only update data, not the underlying libraries."
  }
  output {
    File out_stdout = stdout()
  }
}