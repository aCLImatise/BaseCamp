from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fastq_Utils_Convert_V0_1_0 = CommandToolBuilder(tool="fastq_utils_convert", base_command=["fastq-utils", "convert"], inputs=[ToolInput(tag="in_fast_q_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Utils_Convert_V0_1_0().translate("wdl", allow_empty_container=True)

