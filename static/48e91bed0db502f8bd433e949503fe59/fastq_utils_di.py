from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Fastq_Utils_Di_V0_1_0 = CommandToolBuilder(tool="fastq_utils_di", base_command=["fastq-utils", "di"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Strip additional info")), ToolInput(tag="in_fast_q_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_mate_one_file", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_mate_two_file", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Utils_Di_V0_1_0().translate("wdl", allow_empty_container=True)

