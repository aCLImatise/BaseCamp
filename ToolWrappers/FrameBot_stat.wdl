version 1.0

task FrameBotStat {
  input {
    File? seq_desc
    Int? identity
    File? id_mapping
    File? sample_mapping
    Int? stat_type
    String get_frame_bot_stat_main
    File frame_bot_alignment_file_or_dir
    File out_file
  }
  command <<<
    FrameBot stat \
      ~{get_frame_bot_stat_main} \
      ~{frame_bot_alignment_file_or_dir} \
      ~{out_file} \
      ~{if defined(seq_desc) then ("--seq-desc " +  '"' + seq_desc + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(id_mapping) then ("--id-mapping " +  '"' + id_mapping + '"') else ""} \
      ~{if defined(sample_mapping) then ("--sample-mapping " +  '"' + sample_mapping + '"') else ""} \
      ~{if defined(stat_type) then ("--stat-type " +  '"' + stat_type + '"') else ""}
  >>>
  parameter_meta {
    seq_desc: "the description of the reference seq, tab-delimited file or fasta"
    identity: "the minimum protein identity, default is 0, range [0-100]"
    id_mapping: "Id mapping file. Output from Dereplicator\\n(http://fungene.cme.msu.edu/FunGenePipeline/derep/form.spr)."
    sample_mapping: "Sample mapping file. Output from Dereplicator\\n(http://fungene.cme.msu.edu/FunGenePipeline/derep/form.spr)."
    stat_type: "stat | hist | summary | matrix | subset\\nstat ouptuts the # of seqs passed FrameBot, # of frameshifts for each sample\\nhist outputs a nearest match refseq, description and # of seqs close to the refseq at\\ndifferent identity% ranges\\nsummary outputs a list of subject(refseq), description and  # of seqs close to the subject\\nmatrix outputs the number of sequences to the nearest match. The format is similar to a\\ndata matrix used for R analysis\\nsubset outputs the number of sequences to the nearest match for only sequence IDs in sample\\nmapping file\\n"
    get_frame_bot_stat_main: ""
    frame_bot_alignment_file_or_dir: ""
    out_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_id_mapping = "${in_id_mapping}"
    File out_sample_mapping = "${in_sample_mapping}"
    File out_out_file = "${in_out_file}"
  }
}