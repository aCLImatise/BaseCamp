from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Bam2Fq_Py_V0_1_0 = CommandToolBuilder(tool="bam2fq.py", base_command=["bam2fq.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Alignment file in BAM or SAM format.")), ToolInput(tag="in_out_prefix", input_type=String(optional=True), prefix="--out-prefix", doc=InputDocumentation(doc="Prefix of output fastq files(s).")), ToolInput(tag="in_single_end", input_type=Boolean(optional=True), prefix="--single-end", doc=InputDocumentation(doc="Specificy '-s' or '--single-end' for single-end")), ToolInput(tag="in_sequencing_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-c, --compress        Specificy '-c' or '--compress' to compress output"))], outputs=[], container="quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam2Fq_Py_V0_1_0().translate("wdl")

