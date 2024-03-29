from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fastx_Ends_Tab_Py_Output_Tsv_V0_1_0 = CommandToolBuilder(tool="fastx_ends_tab.py_output_tsv", base_command=["fastx_ends_tab.py", "output_tsv"], inputs=[ToolInput(tag="in_n", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_x_ends_tab_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastx_Ends_Tab_Py_Output_Tsv_V0_1_0().translate("wdl")

