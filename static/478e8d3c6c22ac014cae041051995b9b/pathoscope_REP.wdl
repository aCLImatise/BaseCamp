version 1.0

task PathoscopeREP {
  input {
    String? sam_tools_home
    String? dbhost
    String? db_port
    String? dbuser
    String? db_passwd
    String? db
    String? outdir
    Boolean? contig
    String? sam_file
    Boolean? no_display_cut_off
  }
  command <<<
    pathoscope REP \
      ~{if defined(sam_tools_home) then ("-samtoolsHome " +  '"' + sam_tools_home + '"') else ""} \
      ~{if defined(dbhost) then ("-dbhost " +  '"' + dbhost + '"') else ""} \
      ~{if defined(db_port) then ("-dbport " +  '"' + db_port + '"') else ""} \
      ~{if defined(dbuser) then ("-dbuser " +  '"' + dbuser + '"') else ""} \
      ~{if defined(db_passwd) then ("-dbpasswd " +  '"' + db_passwd + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(outdir) then ("-outDir " +  '"' + outdir + '"') else ""} \
      ~{true="--contig" false="" contig} \
      ~{if defined(sam_file) then ("-samfile " +  '"' + sam_file + '"') else ""} \
      ~{true="--noDisplayCutoff" false="" no_display_cut_off}
  >>>
  parameter_meta {
    sam_tools_home: "Full Path to samtools binary directory (Default: Uses samtools in system path)"
    dbhost: "specify hostname running mysql if you want to use mysql instead of hash method in mapping gi to taxonomy id"
    db_port: "provide mysql server port if different from default (3306)"
    dbuser: "user name to access mysql"
    db_passwd: "provide password associate with user"
    db: "mysql pathoscope database name (default: pathodb)"
    outdir: "Output Directory"
    contig: "Generate Contig Information (Needs samtools package installed)"
    sam_file: "SAM Alignment file path"
    no_display_cut_off: "Do not cutoff display of genomes, even if it is insignificant"
  }
}