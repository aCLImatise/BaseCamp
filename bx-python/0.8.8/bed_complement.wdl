version 1.0

task BedComplement.pyChromLengthFile {
  input {
    String? bedBedFile
    String? chromChromLengthFile
  }
  command <<<
    bed_complement.py chrom_length_file \
      ~{bedBedFile} \
      ~{chromChromLengthFile}
  >>>
}