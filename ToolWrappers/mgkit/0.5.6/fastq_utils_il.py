from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Fastq_Utils_Il_V0_1_0 = CommandToolBuilder(tool="fastq_utils_il", base_command=["fastq-utils", "il"], inputs=[ToolInput(tag="in_mate_one_file", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_mate_two_file", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_q_file", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Utils_Il_V0_1_0().translate("wdl")

