version 1.0

task BpBiofetchGenbankProxy.pl {
  input {
    String _db
    String _database_name
    String var_2
    String _dbgenpep_dbgenbank
    String var_4
    String _style
    String _html_tags
    String var_7
    String _styleraw_dbhtml
    String _enum_rawhtml
    String _format
    String format_database_entries
    String _optional
    String _formatgenbank
    String _enum
    String _i_d
    String unique_database_identifiers
    String var_17
    String _dbj_idjhsfos
    String var_19
  }
  command <<<
    bp_biofetch_genbank_proxy.pl \
      ~{_db} \
      ~{_database_name} \
      ~{var_2} \
      ~{_dbgenpep_dbgenbank} \
      ~{var_4} \
      ~{_style} \
      ~{_html_tags} \
      ~{var_7} \
      ~{_styleraw_dbhtml} \
      ~{_enum_rawhtml} \
      ~{_format} \
      ~{format_database_entries} \
      ~{_optional} \
      ~{_formatgenbank} \
      ~{_enum} \
      ~{_i_d} \
      ~{unique_database_identifiers} \
      ~{var_17} \
      ~{_dbj_idjhsfos} \
      ~{var_19}
  >>>
  parameter_meta {
    _db: ": db"
    _database_name: ": database name"
    var_2: ": required"
    _dbgenpep_dbgenbank: ": db=genpep | db=genbank"
    var_4: ": string "
    _style: ": style"
    _html_tags: ": +/- HTML tags"
    var_7: ": required"
    _styleraw_dbhtml: ": style=raw | db=html"
    _enum_rawhtml: ": enum (raw|html)"
    _format: ": format"
    format_database_entries: ": format of the database entries returned"
    _optional: ": optional"
    _formatgenbank: ": format=genbank"
    _enum: ": enum"
    _i_d: ": id"
    unique_database_identifiers: ": unique database identifier(s)"
    var_17: ": required"
    _dbj_idjhsfos: ": db=J00231 | id=J00231+HSFOS"
    var_19: ": string "
  }
}