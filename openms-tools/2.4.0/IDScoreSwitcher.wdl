version 1.0

task IDScoreSwitcher {
  input {
    File? in
    File? out
    String? new_score
    String? new_score_orientation
    String? new_score_type
    String? old_score
    Boolean? proteins
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    IDScoreSwitcher \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(new_score) then ("-new_score " +  '"' + new_score + '"') else ""} \
      ~{if defined(new_score_orientation) then ("-new_score_orientation " +  '"' + new_score_orientation + '"') else ""} \
      ~{if defined(new_score_type) then ("-new_score_type " +  '"' + new_score_type + '"') else ""} \
      ~{if defined(old_score) then ("-old_score " +  '"' + old_score + '"') else ""} \
      ~{if (proteins) then "-proteins" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*                       Input file (valid formats: 'idXML')"
    out: "*                      Output file (valid formats: 'idXML')"
    new_score: "*                Name of the meta value to use as the new score"
    new_score_orientation: "*  Orientation of the new score (are higher or lower values better?) (valid: 'lower_better', 'higher_better')"
    new_score_type: "Name to use as the type of the new score (default: same as 'new_score')"
    old_score: "Name to use for the meta value storing the old score (default: old score type)"
    proteins: "Apply to protein scores instead of PSM scores"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}