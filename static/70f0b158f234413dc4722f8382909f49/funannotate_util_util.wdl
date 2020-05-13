version 1.0

task FunannotateUtilUtil {
  input {
    String? contrastContrast
    String? tbl2gbkTbl2gbk
    String? gbk2Gbk2Parts
    String? gff2protGff2prot
    String? gff2tblGff2tbl
    String? bam2gff3Bam2gff3
    String? prot2Prot2Genome
    String? stringStringTie2gff3
    String? quarryQuarry2gff3
  }
  command <<<
    funannotate util util \
      ~{contrastContrast} \
      ~{tbl2gbkTbl2gbk} \
      ~{gbk2Gbk2Parts} \
      ~{gff2protGff2prot} \
      ~{gff2tblGff2tbl} \
      ~{bam2gff3Bam2gff3} \
      ~{prot2Prot2Genome} \
      ~{stringStringTie2gff3} \
      ~{quarryQuarry2gff3}
  >>>
}