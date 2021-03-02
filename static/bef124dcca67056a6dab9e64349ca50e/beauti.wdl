version 1.0

task Beauti {
  input {
    String? advanced
    String? version
    String alexei_atcs_dot_auckland_do_tac_dot_nz
    String a_dotrambautateddotacdotuk
    String m_suchard_at_ucla_dot_edu
  }
  command <<<
    beauti \
      ~{alexei_atcs_dot_auckland_do_tac_dot_nz} \
      ~{a_dotrambautateddotacdotuk} \
      ~{m_suchard_at_ucla_dot_edu} \
      ~{if defined(advanced) then ("-advanced " +  '"' + advanced + '"') else ""} \
      ~{if defined(version) then ("-version " +  '"' + version + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    advanced: "advanced & developer features"
    version: "the version and credits and stop"
    alexei_atcs_dot_auckland_do_tac_dot_nz: "Institute of Evolutionary Biology"
    a_dotrambautateddotacdotuk: "David Geffen School of Medicine"
    m_suchard_at_ucla_dot_edu: "Downloads, Help & Resources:\\nhttp://beast.community"
  }
  output {
    File out_stdout = stdout()
  }
}