from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Dnase_To_Json_Py_Reads_V0_1_0 = CommandToolBuilder(tool="dnase_to_JSON.py_reads", base_command=["dnase_to_JSON.py", "reads"], inputs=[ToolInput(tag="in_a", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_w", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="")), ToolInput(tag="in_dnase_to_json_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_regions", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_reads", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dnase_To_Json_Py_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

