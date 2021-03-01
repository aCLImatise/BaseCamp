from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bam2Fastq_V0_1_0 = CommandToolBuilder(tool="bam2fastq", base_command=["bam2fastq"], inputs=[ToolInput(tag="in_output", input_type=Boolean(optional=True), prefix="--output", doc=InputDocumentation(doc="STR  Prefix of output filenames")), ToolInput(tag="in_int_gzip_compression", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="INT  Gzip compression level [1-9] [1]")), ToolInput(tag="in_compress_we_add", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="Do not compress. In this case, we will not add .gz, and we ignore any -c setting.")), ToolInput(tag="in_split_barcodes", input_type=Boolean(optional=True), prefix="--split-barcodes", doc=InputDocumentation(doc="Split output into multiple FASTQ files, by barcode pairs.")), ToolInput(tag="in_seq_id_prefix", input_type=Boolean(optional=True), prefix="--seqid-prefix", doc=InputDocumentation(doc="STR  Prefix for sequence IDs in headers")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="STR  Input file(s)."))], outputs=[], container="quay.io/biocontainers/bam2fastx:1.3.1--he1c1bb9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam2Fastq_V0_1_0().translate("wdl")

