version 1.0

task MimoddHeader {
  input {
    File? ofile
    Boolean? relaxed
    Array[String] rg_id
    Array[String] rg_sm
    Array[String] rg_cn
    Array[String] rg_ds
    Array[String] rg_dt
    Array[String] rg_lb
    Array[String] rg_pl
    Array[String] rg_pi
    Array[String] rg_pu
    Boolean? co
    String header
  }
  command <<<
    mimodd header \
      ~{header} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""} \
      ~{if (relaxed) then "--relaxed" else ""} \
      ~{if defined(rg_id) then ("--rg-id " +  '"' + rg_id + '"') else ""} \
      ~{if defined(rg_sm) then ("--rg-sm " +  '"' + rg_sm + '"') else ""} \
      ~{if defined(rg_cn) then ("--rg-cn " +  '"' + rg_cn + '"') else ""} \
      ~{if defined(rg_ds) then ("--rg-ds " +  '"' + rg_ds + '"') else ""} \
      ~{if defined(rg_dt) then ("--rg-dt " +  '"' + rg_dt + '"') else ""} \
      ~{if defined(rg_lb) then ("--rg-lb " +  '"' + rg_lb + '"') else ""} \
      ~{if defined(rg_pl) then ("--rg-pl " +  '"' + rg_pl + '"') else ""} \
      ~{if defined(rg_pi) then ("--rg-pi " +  '"' + rg_pi + '"') else ""} \
      ~{if defined(rg_pu) then ("--rg-pu " +  '"' + rg_pu + '"') else ""} \
      ~{if (co) then "--co" else ""}
  >>>
  parameter_meta {
    ofile: "redirect the output to the specified file (default:\\nstdout)"
    relaxed: "do not enforce a sample name to be specified for every\\nread group"
    rg_id: "one or more unique read group identifiers"
    rg_sm: "one sample name per read group identifier"
    rg_cn: "one sequencing center name per read group"
    rg_ds: "one description line per read group"
    rg_dt: "date runs were produced (YYYY-MM-DD); one date per\\nread group"
    rg_lb: "library identifier for each read group"
    rg_pl: "sequencing platform/technology used to produce each\\nread group"
    rg_pi: "predicted median insert size for the reads of each\\nread group"
    rg_pu: "platform unit, e.g., flowcell barcode or slide\\nidentifier, for each read group"
    co: "[COMMENT [COMMENT ...]]\\nan arbitrary number of one-line comment strings\\n"
    header: ""
  }
  output {
    File out_stdout = stdout()
    File out_ofile = "${in_ofile}"
  }
}