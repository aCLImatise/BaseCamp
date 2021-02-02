version 1.0

task DeltaBSpl {
  input {
    Boolean? _filetype_specify
    Boolean? fone
    Boolean? f_two
    Boolean? pfam_an_not_one
    Boolean? pfam_an_not_two
    Boolean? p_hmmer_an_not_one
    Boolean? p_hmmer_an_not_two
    Directory? _outdir_directory
    Boolean? ol
    Boolean? hp
    Boolean? hd
    Boolean? _cpus_number
    Boolean? _tempdir_path
    Boolean? _post_pathways
    Boolean? _dirty_delete
    Boolean? _verbose_turn
  }
  command <<<
    deltaBS_pl \
      ~{if (_filetype_specify) then "-f" else ""} \
      ~{if (fone) then "-f1" else ""} \
      ~{if (f_two) then "-f2" else ""} \
      ~{if (pfam_an_not_one) then "--pfamannot1" else ""} \
      ~{if (pfam_an_not_two) then "--pfamannot2" else ""} \
      ~{if (p_hmmer_an_not_one) then "--phmmerannot1" else ""} \
      ~{if (p_hmmer_an_not_two) then "--phmmerannot2" else ""} \
      ~{if (_outdir_directory) then "-o" else ""} \
      ~{if (ol) then "-ol" else ""} \
      ~{if (hp) then "-hp" else ""} \
      ~{if (hd) then "-hd" else ""} \
      ~{if (_cpus_number) then "-c" else ""} \
      ~{if (_tempdir_path) then "-t" else ""} \
      ~{if (_post_pathways) then "-p" else ""} \
      ~{if (_dirty_delete) then "-d" else ""} \
      ~{if (_verbose_turn) then "-v" else ""}
  >>>
  parameter_meta {
    _filetype_specify: "/ --filetype        :       Specify filetype, must be 'embl', 'genbank', or 'fasta'"
    fone: "/ --file1           :       Reference genome/proteome in filetype format"
    f_two: "/ --file2           :       Comparator genome/proteome in filetype format"
    pfam_an_not_one: ":       Pfam annotations of proteome1"
    pfam_an_not_two: ":       Pfam annotations of proteome2"
    p_hmmer_an_not_one: ":       phmmer domtblout of proteome1 vs proteome2"
    p_hmmer_an_not_two: ":       phmmer domtblout of proteome2 vs proteome1"
    _outdir_directory: "/ --outdir          :       Output directory"
    ol: "/ --orthlist        :       Ortholog list file"
    hp: "/ --hmmerpath       :       Path to hmmer installation"
    hd: "/ --hmmlibdir       :       Path to hmm libraries (and annotation files for post-processing)"
    _cpus_number: "/ --cpus            :       Number of CPUs for hmmsearch, phmmer etc to use."
    _tempdir_path: "/ --tempdir         :       Path to temporary directory"
    _post_pathways: "/ --post            :       Enable post-processing (pathways, etc. EXPERIMENTAL)"
    _dirty_delete: "/ --dirty           :       Do not delete /tmp file"
    _verbose_turn: "/ --verbose         :       Turn on verbose messaging"
  }
  output {
    File out_stdout = stdout()
    Directory out__outdir_directory = "${in__outdir_directory}"
  }
}