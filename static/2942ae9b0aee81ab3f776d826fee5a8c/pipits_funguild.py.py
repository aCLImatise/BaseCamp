from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Pipits_Funguild_Py_V0_1_0 = CommandToolBuilder(tool="pipits_funguild.py", base_command=["pipits_funguild.py"], inputs=[ToolInput(tag="in_input_otu_table", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="[REQUIRED] Input OTU table generated from pipits_process.")), ToolInput(tag="in_output_funguild_formatted", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="[REQUIRED] Output FUNGuild formatted OTU table.")), ToolInput(tag="in_converts", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_otu", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_tables", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_into", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_fun_guild", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_formatted", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_table_dot", input_type=String(), position=7, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pipits_Funguild_Py_V0_1_0().translate("wdl", allow_empty_container=True)

