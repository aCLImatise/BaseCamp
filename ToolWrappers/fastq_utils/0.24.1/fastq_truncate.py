from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Fastq_Truncate_V0_1_0 = CommandToolBuilder(tool="fastq_truncate", base_command=["fastq_truncate"], inputs=[ToolInput(tag="in_fast_q_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_num_reads", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/fastq_utils:0.24.1--hfb9b9cc_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Truncate_V0_1_0().translate("wdl")

