version 1.0

task ProteinorthoFfadjMcspy {
  input {
    Int? repeat_matching
    Int? min_cs_size
    String? g
  }
  command <<<
    proteinortho_ffadj_mcs_py \
      ~{if defined(repeat_matching) then ("--repeat-matching " +  '"' + repeat_matching + '"') else ""} \
      ~{if defined(min_cs_size) then ("--min-cs-size " +  '"' + min_cs_size + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteinortho:6.0.30--hb0e25da_0"
  }
  parameter_meta {
    repeat_matching: "match N repetitions (default: 0)"
    min_cs_size: "minimal cs size (default: 1)"
    g: ""
  }
  output {
    File out_stdout = stdout()
  }
}