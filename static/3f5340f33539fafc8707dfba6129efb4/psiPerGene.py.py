from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Psipergene_Py_V0_1_0 = CommandToolBuilder(tool="psiPerGene.py", base_command=["psiPerGene.py"], inputs=[ToolInput(tag="in_m", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_e", input_type=File(optional=True), prefix="-e", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_o", output_type=File(optional=True), selector=InputSelector(input_to_select="in_o", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Psipergene_Py_V0_1_0().translate("wdl", allow_empty_container=True)

