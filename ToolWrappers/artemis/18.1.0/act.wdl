version 1.0

task Act {
  input {
    File? options
    Boolean? chado
    Boolean? d_black_belt_mode
    Array[File] d_user_plot_x
    Array[File] dlog_user_plot_x
    File? dba_mx
    Boolean? dcha_do
    Boolean? dread_only
    String sequence
    String feature
    String comparison
  }
  command <<<
    act \
      ~{sequence} \
      ~{feature} \
      ~{comparison} \
      ~{if defined(options) then ("-options " +  '"' + options + '"') else ""} \
      ~{if (chado) then "-chado" else ""} \
      ~{if (d_black_belt_mode) then "-Dblack_belt_mode" else ""} \
      ~{if defined(d_user_plot_x) then ("-DuserplotX " +  '"' + d_user_plot_x + '"') else ""} \
      ~{if defined(dlog_user_plot_x) then ("-DloguserplotX " +  '"' + dlog_user_plot_x + '"') else ""} \
      ~{if defined(dba_mx) then ("-DbamX " +  '"' + dba_mx + '"') else ""} \
      ~{if (dcha_do) then "-Dchado" else ""} \
      ~{if (dread_only) then "-Dread_only" else ""}
  >>>
  parameter_meta {
    options: "Read a text file of options from FILE"
    chado: "Connect to a Chado database (using PGHOST, PGPORT, PGDATABASE, PGUSER environment variables)"
    d_black_belt_mode: "=?         Keep warning messages to a minimum [true,false]"
    d_user_plot_x: "For sequence 'X' open one or more userplots"
    dlog_user_plot_x: "For sequence 'X' open one or more userplots, take log(data)"
    dba_mx: "[,FILE2,...]     For sequence 'X' open one or more BAM, CRAM, VCF, or BCF files"
    dcha_do: "=\\\"h:p/d?u\\\"           Get ACT to open this CHADO database"
    dread_only: "Open CHADO database read-only"
    sequence: "An EMBL, GenBank, FASTA, or GFF3 file"
    feature: "An Artemis TAB file, or GFF file"
    comparison: "A BLAST comparison file in tabular format"
  }
  output {
    File out_stdout = stdout()
  }
}