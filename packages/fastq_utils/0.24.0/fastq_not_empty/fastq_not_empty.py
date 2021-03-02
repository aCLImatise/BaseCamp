from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fastq_Not_Empty_V0_1_0 = CommandToolBuilder(tool="fastq_not_empty", base_command=["fastq_not_empty"], inputs=[ToolInput(tag="in_fast_q_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Not_Empty_V0_1_0().translate("wdl", allow_empty_container=True)

