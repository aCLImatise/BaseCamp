from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Getseq_V0_1_0 = CommandToolBuilder(tool="getSeq", base_command=["getSeq"], inputs=[ToolInput(tag="in_rc", input_type=Boolean(optional=True), prefix="--rc", doc=InputDocumentation(doc="output the reverse complement of the sequence")), ToolInput(tag="in_start", input_type=Int(optional=True), prefix="--start", doc=InputDocumentation(doc="retrieve subsequence starting at position N (coordinates are 1-based)")), ToolInput(tag="in_end", input_type=Int(optional=True), prefix="--end", doc=InputDocumentation(doc="retrieve subsequence ending at position N (coordinates are 1-based)")), ToolInput(tag="in_mysql", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getseq_V0_1_0().translate("wdl", allow_empty_container=True)

