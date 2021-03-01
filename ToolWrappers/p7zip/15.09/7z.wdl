version 1.0

task Z {
  input {
    Boolean? a_i
    Boolean? a_x
    Boolean? ao
    Boolean? an
    Boolean? bb
    Boolean? bd
    Boolean? bs
    Boolean? bt
    Boolean? _include_filenames
    Boolean? set_compression_method
    Boolean? mmt
    Directory? set_output_directory
    Boolean? _set_password
    Boolean? _recurse_subdirectories
    Boolean? sa
    Boolean? scc
    Boolean? scs
    Boolean? scrc
    Boolean? s_del
    Boolean? sem_l
    Boolean? sfx
    Boolean? si
    Boolean? slp
    Boolean? slt
    Boolean? snh
    Boolean? snl
    Boolean? sni
    Boolean? sns
    Boolean? so
    Boolean? spd
    Boolean? spe
    Boolean? spf
    Boolean? ssc
    Boolean? ssw
    Boolean? stl
    Boolean? stm
    Boolean? stx
    Boolean? set_type_archive
    Boolean? _update_options
    Boolean? _create_volumes
    Boolean? assign_path_means
    Boolean? _exclude_filenames
    Boolean? _assume_queries
    String var_command
    String? switches
    String archive_name
    String? file_names
  }
  command <<<
    _z \
      ~{var_command} \
      ~{switches} \
      ~{archive_name} \
      ~{file_names} \
      ~{if (a_i) then "-ai" else ""} \
      ~{if (a_x) then "-ax" else ""} \
      ~{if (ao) then "-ao" else ""} \
      ~{if (an) then "-an" else ""} \
      ~{if (bb) then "-bb" else ""} \
      ~{if (bd) then "-bd" else ""} \
      ~{if (bs) then "-bs" else ""} \
      ~{if (bt) then "-bt" else ""} \
      ~{if (_include_filenames) then "-i" else ""} \
      ~{if (set_compression_method) then "-m" else ""} \
      ~{if (mmt) then "-mmt" else ""} \
      ~{if (set_output_directory) then "-o" else ""} \
      ~{if (_set_password) then "-p" else ""} \
      ~{if (_recurse_subdirectories) then "-r" else ""} \
      ~{if (sa) then "-sa" else ""} \
      ~{if (scc) then "-scc" else ""} \
      ~{if (scs) then "-scs" else ""} \
      ~{if (scrc) then "-scrc" else ""} \
      ~{if (s_del) then "-sdel" else ""} \
      ~{if (sem_l) then "-seml" else ""} \
      ~{if (sfx) then "-sfx" else ""} \
      ~{if (si) then "-si" else ""} \
      ~{if (slp) then "-slp" else ""} \
      ~{if (slt) then "-slt" else ""} \
      ~{if (snh) then "-snh" else ""} \
      ~{if (snl) then "-snl" else ""} \
      ~{if (sni) then "-sni" else ""} \
      ~{if (sns) then "-sns" else ""} \
      ~{if (so) then "-so" else ""} \
      ~{if (spd) then "-spd" else ""} \
      ~{if (spe) then "-spe" else ""} \
      ~{if (spf) then "-spf" else ""} \
      ~{if (ssc) then "-ssc" else ""} \
      ~{if (ssw) then "-ssw" else ""} \
      ~{if (stl) then "-stl" else ""} \
      ~{if (stm) then "-stm" else ""} \
      ~{if (stx) then "-stx" else ""} \
      ~{if (set_type_archive) then "-t" else ""} \
      ~{if (_update_options) then "-u" else ""} \
      ~{if (_create_volumes) then "-v" else ""} \
      ~{if (assign_path_means) then "-w" else ""} \
      ~{if (_exclude_filenames) then "-x" else ""} \
      ~{if (_assume_queries) then "-y" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    a_i: "[r[-|0]]{@listfile|!wildcard} : Include archives"
    a_x: "[r[-|0]]{@listfile|!wildcard} : eXclude archives"
    ao: "{a|s|t|u} : set Overwrite mode"
    an: ": disable archive_name field"
    bb: "[0-3] : set output log level"
    bd: ": disable progress indicator"
    bs: "{o|e|p}{0|1|2} : set output stream for output/error/progress line"
    bt: ": show execution time statistics"
    _include_filenames: "[r[-|0]]{@listfile|!wildcard} : Include filenames"
    set_compression_method: "{Parameters} : set compression Method"
    mmt: "[N] : set number of CPU threads"
    set_output_directory: "{Directory} : set Output directory"
    _set_password: "{Password} : set Password"
    _recurse_subdirectories: "[-|0] : Recurse subdirectories"
    sa: "{a|e|s} : set Archive name mode"
    scc: "{UTF-8|WIN|DOS} : set charset for for console input/output"
    scs: "{UTF-8|UTF-16LE|UTF-16BE|WIN|DOS|{id}} : set charset for list files"
    scrc: "[CRC32|CRC64|SHA1|SHA256|*] : set hash function for x, e, h commands"
    s_del: ": delete files after compression"
    sem_l: "[.] : send archive by email"
    sfx: "[{name}] : Create SFX archive"
    si: "[{name}] : read data from stdin"
    slp: ": set Large Pages mode"
    slt: ": show technical information for l (List) command"
    snh: ": store hard links as links"
    snl: ": store symbolic links as links"
    sni: ": store NT security information"
    sns: "[-] : store NTFS alternate streams"
    so: ": write data to stdout"
    spd: ": disable wildcard matching for file names"
    spe: ": eliminate duplication of root folder for extract command"
    spf: ": use fully qualified file paths"
    ssc: "[-] : set sensitive case mode"
    ssw: ": compress shared files"
    stl: ": set archive timestamp from the most recently modified file"
    stm: "{HexMask} : set CPU thread affinity mask (hexadecimal number)"
    stx: "{Type} : exclude archive type"
    set_type_archive: "{Type} : Set type of archive"
    _update_options: "[-][p#][q#][r#][x#][y#][z#][!newArchiveName] : Update options"
    _create_volumes: "{Size}[b|k|m|g] : Create volumes"
    assign_path_means: "[{path}] : assign Work directory. Empty path means a temporary directory"
    _exclude_filenames: "[r[-|0]]]{@listfile|!wildcard} : eXclude filenames"
    _assume_queries: ": assume Yes on all queries"
    var_command: ""
    switches: ""
    archive_name: ""
    file_names: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_set_output_directory = "${in_set_output_directory}"
  }
}