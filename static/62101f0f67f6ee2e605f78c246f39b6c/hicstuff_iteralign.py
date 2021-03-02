from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Directory, Boolean, String

Hicstuff_Iteralign_V0_1_0 = CommandToolBuilder(tool="hicstuff_iteralign", base_command=["hicstuff", "iteralign"], inputs=[ToolInput(tag="in_genome", input_type=File(optional=True), prefix="--genome", doc=InputDocumentation(doc="The genome on which to map the reads. Must be\nthe path to the bowtie2/bwa index if using bowtie2/bwa\nor to the genome in fasta format if using minimap2.")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of parallel threads allocated for the\nalignment [default: 1].")), ToolInput(tag="in_tempdir", input_type=Directory(optional=True), prefix="--tempdir", doc=InputDocumentation(doc="Temporary directory. Defaults to current")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min-len", doc=InputDocumentation(doc="Length to which the reads should be\ntruncated [default: 20].")), ToolInput(tag="in_out_bam", input_type=File(optional=True), prefix="--out-bam", doc=InputDocumentation(doc="Path where the alignment will be written in\nBAM format.")), ToolInput(tag="in_read_len", input_type=Int(optional=True), prefix="--read-len", doc=InputDocumentation(doc="Read length in input FASTQ file. If not provided,\nthis is estimated from the first read in the file.\n")), ToolInput(tag="in_a", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="")), ToolInput(tag="in_aligner", input_type=Int(optional=True), prefix="--aligner", doc=InputDocumentation(doc="")), ToolInput(tag="in_reads_dot_fq", input_type=String(), position=0, doc=InputDocumentation(doc="Fastq file containing the reads to be aligned")), ToolInput(tag="in_directory_dot", input_type=Directory(), position=0, doc=InputDocumentation(doc="-a, --aligner=bowtie2    Choose alignment software between bowtie2,"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicstuff_Iteralign_V0_1_0().translate("wdl", allow_empty_container=True)

