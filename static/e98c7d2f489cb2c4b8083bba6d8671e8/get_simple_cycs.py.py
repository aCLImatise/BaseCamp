from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int

Get_Simple_Cycs_Py_V0_1_0 = CommandToolBuilder(tool="get_simple_cycs.py", base_command=["get_simple_cycs.py"], inputs=[ToolInput(tag="in_input", input_type=Float(optional=True), prefix="--input", doc=InputDocumentation(doc="Input (SPAdes 3.50+) FASTG to process")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min_length", doc=InputDocumentation(doc="Minimum cycle length to keep (shorter cycles put in\nnew graph file; default = 1000)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Simple_Cycs_Py_V0_1_0().translate("wdl", allow_empty_container=True)

