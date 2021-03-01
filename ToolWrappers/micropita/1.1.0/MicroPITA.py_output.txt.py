from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Micropita_Py_Output_Txt_V0_1_0 = CommandToolBuilder(tool="MicroPITA.py_output.txt", base_command=["MicroPITA.py", "output.txt"], inputs=[ToolInput(tag="in_a", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="")), ToolInput(tag="in_m", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_micro_pita_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Micropita_Py_Output_Txt_V0_1_0().translate("wdl", allow_empty_container=True)

