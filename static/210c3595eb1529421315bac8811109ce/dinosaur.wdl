version 1.0

task Dinosaur {
  input {
    String? advAdvParams
    String? outdirOutdir
    String? outOutName
  }
  command <<<
    dinosaur \
      ~{advAdvParams} \
      ~{outdirOutdir} \
      ~{outOutName}
  >>>
}