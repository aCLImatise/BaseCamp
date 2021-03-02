from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, File, String

Reago_Py_V0_1_0 = CommandToolBuilder(tool="reago.py", base_command=["reago.py"], inputs=[ToolInput(tag="in_o", input_type=Float(optional=True), prefix="-o", doc=InputDocumentation(doc=", default 0.8")), ToolInput(tag="in_e", input_type=Float(optional=True), prefix="-e", doc=InputDocumentation(doc=", default 0.05")), ToolInput(tag="in_t", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc=", default 30")), ToolInput(tag="in_b", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc=", default 10")), ToolInput(tag="in_l", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_filename_dot_fast_a", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_dir", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reago_Py_V0_1_0().translate("wdl", allow_empty_container=True)

