from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Fastq_Count_V0_1_0 = CommandToolBuilder(tool="fastq_count", base_command=["fastq-count"], inputs=[ToolInput(tag="in_r_one_dot_fq", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_r_two_dot_fq", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Count_V0_1_0().translate("wdl", allow_empty_container=True)

