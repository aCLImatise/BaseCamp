version 1.0

task ConfigureESTmapperpl {
  input {
    String? genome
    Directory? genome_dir
    Int? mer_size
    Int? mer_skip
    Int? memory
    Int? segments
    Boolean? sge
    Boolean? sge_name
    Boolean? local
  }
  command <<<
    configureESTmapper_pl \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{if defined(genome_dir) then ("-genomedir " +  '"' + genome_dir + '"') else ""} \
      ~{if defined(mer_size) then ("-mersize " +  '"' + mer_size + '"') else ""} \
      ~{if defined(mer_skip) then ("-merskip " +  '"' + mer_skip + '"') else ""} \
      ~{if defined(memory) then ("-memory " +  '"' + memory + '"') else ""} \
      ~{if defined(segments) then ("-segments " +  '"' + segments + '"') else ""} \
      ~{if (sge) then "-sge" else ""} \
      ~{if (sge_name) then "-sgename" else ""} \
      ~{if (local) then "-local" else ""}
  >>>
  parameter_meta {
    genome: "the genome to map to"
    genome_dir: "the directory to save the configuration in"
    mer_size: "use m-mers (default 20)"
    mer_skip: "skip s m-mers between mers (default 0, use all mers)"
    memory: "use M MB memory for the search processes (default 1000MB)"
    segments: "use S search processes (default, based on memory size)"
    sge: "compute the configuration on the grid; args are passed to qsub"
    sge_name: "sge job name (default 'EMconfig')"
    local: "compute the configuration right now (the default)"
  }
  output {
    File out_stdout = stdout()
  }
}