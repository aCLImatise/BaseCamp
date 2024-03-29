version 1.0

task Gsnd {
  input {
    Boolean? d_no_pause
    Boolean? widthxheight_page_size
    File? s_device
    File? soutputfile
    String gs
    String? switches
    Int? file_two_do_tps
  }
  command <<<
    gsnd \
      ~{gs} \
      ~{switches} \
      ~{file_two_do_tps} \
      ~{if (d_no_pause) then "-dNOPAUSE" else ""} \
      ~{if (widthxheight_page_size) then "-g" else ""} \
      ~{if defined(s_device) then ("-sDEVICE " +  '"' + s_device + '"') else ""} \
      ~{if defined(soutputfile) then ("-sOutputFile " +  '"' + soutputfile + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    d_no_pause: "no pause after page   | -q       `quiet', fewer messages"
    widthxheight_page_size: "<width>x<height>  page size in pixels   | -r<res>  pixels/inch resolution"
    s_device: "select device         | -dBATCH  exit after last file"
    soutputfile: "select output file: - for stdout, |command for pipe,\\nembed %d or %ld for page #"
    gs: ""
    switches: ""
    file_two_do_tps: ""
  }
  output {
    File out_stdout = stdout()
    File out_soutputfile = "${in_soutputfile}"
  }
}