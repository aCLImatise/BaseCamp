version 1.0

task Art {
  input {
    File? options
    Boolean? chado
    Boolean? d_black_belt_mode
    String? d_offset
    Array[File] d_user_plot
    Array[File] dlog_user_plot
    File? db_am
    String? db_am_clone
    Boolean? d_show_snps
    Boolean? d_show_snp_plot
    Boolean? d_show_cov_plot
    Boolean? d_show_forward_lines
    Boolean? d_show_reverse_lines
    Boolean? dcha_do
    Boolean? dread_only
    String sequence_file
    String feature_file
  }
  command <<<
    art \
      ~{sequence_file} \
      ~{feature_file} \
      ~{if defined(options) then ("-options " +  '"' + options + '"') else ""} \
      ~{true="-chado" false="" chado} \
      ~{true="-Dblack_belt_mode" false="" d_black_belt_mode} \
      ~{if defined(d_offset) then ("-Doffset " +  '"' + d_offset + '"') else ""} \
      ~{if defined(d_user_plot) then ("-Duserplot " +  '"' + d_user_plot + '"') else ""} \
      ~{if defined(dlog_user_plot) then ("-Dloguserplot " +  '"' + dlog_user_plot + '"') else ""} \
      ~{if defined(db_am) then ("-Dbam " +  '"' + db_am + '"') else ""} \
      ~{if defined(db_am_clone) then ("-DbamClone " +  '"' + db_am_clone + '"') else ""} \
      ~{true="-Dshow_snps" false="" d_show_snps} \
      ~{true="-Dshow_snp_plot" false="" d_show_snp_plot} \
      ~{true="-Dshow_cov_plot" false="" d_show_cov_plot} \
      ~{true="-Dshow_forward_lines" false="" d_show_forward_lines} \
      ~{true="-Dshow_reverse_lines" false="" d_show_reverse_lines} \
      ~{true="-Dchado" false="" dcha_do} \
      ~{true="-Dread_only" false="" dread_only}
  >>>
  parameter_meta {
    options: "Read a text file of options from FILE"
    chado: "Connect to a Chado database (using PGHOST, PGPORT, PGDATABASE, PGUSER environment variables)"
    d_black_belt_mode: "=?            Keep warning messages to a minimum [true,false]"
    d_offset: "Open viewer at base position XXX [integer >= 1]"
    d_user_plot: "Open one or more userplots"
    dlog_user_plot: "Open one or more userplots, take log(data)"
    db_am: "[,FILE2,...]         Open one or more BAM, CRAM, VCF or BCF files"
    db_am_clone: "Open all BAM, CRAM, VCF or BCF files in multiple (n > 1) panels"
    d_show_snps: "Show SNP marks in BamView"
    d_show_snp_plot: "Open SNP plot in BamView"
    d_show_cov_plot: "Open coverage plot in BamView"
    d_show_forward_lines: "=?         Hide/show forward frame lines [true,false]"
    d_show_reverse_lines: "=?         Hide/show reverse frame lines [true,false]"
    dcha_do: "=\"h:p/d?u\"              Get Artemis to open this CHADO database"
    dread_only: "Open CHADO database read-only"
    sequence_file: "An EMBL, GenBank, FASTA, or GFF3 file"
    feature_file: "An Artemis TAB file, or GFF file"
  }
}