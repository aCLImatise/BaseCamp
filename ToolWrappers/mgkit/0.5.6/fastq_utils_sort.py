from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Fastq_Utils_Sort_V0_1_0 = CommandToolBuilder(tool="fastq_utils_sort", base_command=["fastq-utils", "sort"], inputs=[ToolInput(tag="in_mate_one_input", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_mate_two_input", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_mate_one_output", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Utils_Sort_V0_1_0().translate("wdl")

