from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float

Bam2Fastq_V0_1_0 = CommandToolBuilder(tool="bam2fastq", base_command=["bam2fastq"], inputs=[ToolInput(tag="in_output_dot_one_dot_fast_q", input_type=Float(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_dot_two_dot_fast_q", input_type=Float(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam2Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

