from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Deletion_Profile_Py_V0_1_0 = CommandToolBuilder(tool="deletion_profile.py", base_command=["deletion_profile.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input BAM file. [required]")), ToolInput(tag="in_read_align_length", input_type=Int(optional=True), prefix="--read-align-length", doc=InputDocumentation(doc="Alignment length of read. It is usually set to the\norignial read length. For example, all these cigar\nstrings ('101M', '68M140N33M', '53M1D48M') suggest the\nread alignment length is 101. [required]")), ToolInput(tag="in_out_prefix", input_type=String(optional=True), prefix="--out-prefix", doc=InputDocumentation(doc="Prefix of output files(s). [required]")), ToolInput(tag="in_read_num", input_type=Int(optional=True), prefix="--read-num", doc=InputDocumentation(doc="Number of aligned reads with deletions used to\ncalculate the deletion profile. default=1000000")), ToolInput(tag="in_mapq", input_type=Int(optional=True), prefix="--mapq", doc=InputDocumentation(doc="Minimum mapping quality. default=30\n"))], outputs=[], container="quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deletion_Profile_Py_V0_1_0().translate("wdl")

