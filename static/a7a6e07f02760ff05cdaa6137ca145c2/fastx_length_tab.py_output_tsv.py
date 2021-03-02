from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fastx_Length_Tab_Py_Output_Tsv_V0_1_0 = CommandToolBuilder(tool="fastx_length_tab.py_output_tsv", base_command=["fastx_length_tab.py", "output_tsv"], inputs=[ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_x_length_tab_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_fast_x", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_tsv", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastx_Length_Tab_Py_Output_Tsv_V0_1_0().translate("wdl", allow_empty_container=True)

