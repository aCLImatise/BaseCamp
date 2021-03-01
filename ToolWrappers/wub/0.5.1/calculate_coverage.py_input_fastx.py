from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Calculate_Coverage_Py_Input_Fastx_V0_1_0 = CommandToolBuilder(tool="calculate_coverage.py_input_fastx", base_command=["calculate_coverage.py", "input_fastx"], inputs=[ToolInput(tag="in_s", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_calculate_coverage_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Calculate_Coverage_Py_Input_Fastx_V0_1_0().translate("wdl")

