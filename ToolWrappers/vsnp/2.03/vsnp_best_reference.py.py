from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Vsnp_Best_Reference_Py_V0_1_0 = CommandToolBuilder(tool="vsnp_best_reference.py", base_command=["vsnp_best_reference.py"], inputs=[ToolInput(tag="in_read_one", input_type=Int(optional=True), prefix="--read1", doc=InputDocumentation(doc="Required: single read")), ToolInput(tag="in_read_two", input_type=Int(optional=True), prefix="--read2", doc=InputDocumentation(doc="Optional: paired read")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_prog", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vsnp_Best_Reference_Py_V0_1_0().translate("wdl", allow_empty_container=True)

