version 1.0

task BpGenbank2gffpl {
  input {
    Boolean? create
    Boolean? dsn
    Boolean? user
    Boolean? pass
    Boolean? proxy
    Boolean? stdout
    Boolean? adaptor
    Boolean? viral
    Boolean? source
  }
  command <<<
    bp_genbank2gff_pl \
      ~{if (create) then "--create" else ""} \
      ~{if (dsn) then "--dsn" else ""} \
      ~{if (user) then "--user" else ""} \
      ~{if (pass) then "--pass" else ""} \
      ~{if (proxy) then "--proxy" else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if (adaptor) then "--adaptor" else ""} \
      ~{if (viral) then "--viral" else ""} \
      ~{if (source) then "--source" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    create: "Force creation and initialization of database"
    dsn: "<dsn>        Data source (default dbi:mysql:test)"
    user: "<user>       Username for mysql authentication"
    pass: "<password>   Password for mysql authentication"
    proxy: "<proxy>      Proxy server to use for remote access"
    stdout: "direct output to STDOUT"
    adaptor: "<adaptor>    adaptor to use (eg dbi::mysql, dbi::pg, dbi::oracle)"
    viral: "the genome you are loading is viral (changes tag\\nchoices)"
    source: "<source>     source field for features ['genbank']\\nEITHER --file           Arguments that follow are Genbank/EMBL file names\\nOR --gb_folder          What follows is a folder full of gb files to process\\nOR --accession          Arguments that follow are genbank accession numbers\\n(not gi!)\\nOR --acc_file           Accession numbers (not gi!) in a file (one per line,\\nno punc.)\\nOR --acc_pipe           Accession numbers (not gi!) from a STDIN pipe (one\\nper line)"
  }
  output {
    File out_stdout = stdout()
  }
}