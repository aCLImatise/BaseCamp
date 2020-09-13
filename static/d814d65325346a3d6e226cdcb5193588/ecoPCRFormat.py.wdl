version 1.0

task EcoPCRFormatpy {
  input {
    Boolean? _embl_mbl
    Boolean? _fasta_format
    Boolean? _genbank_format
    Boolean? _name_ame
    Boolean? _taxonomy_path
  }
  command <<<
    ecoPCRFormat_py \
      ~{if (_embl_mbl) then "-e" else ""} \
      ~{if (_fasta_format) then "-f" else ""} \
      ~{if (_genbank_format) then "-g" else ""} \
      ~{if (_name_ame) then "-n" else ""} \
      ~{if (_taxonomy_path) then "-t" else ""}
  >>>
  parameter_meta {
    _embl_mbl: "--embl        :[E]mbl format"
    _fasta_format: "--fasta       :[F]asta format"
    _genbank_format: "--genbank     :[G]enbank format"
    _name_ame: "--name        :[N]ame of the new database created"
    _taxonomy_path: "--taxonomy    :[T]axonomy - path to the taxonomy database\\n:bcp-like dump from GenBank taxonomy database."
  }
  output {
    File out_stdout = stdout()
  }
}