from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Converttoatac_V0_1_0 = CommandToolBuilder(tool="convertToAtac", base_command=["convertToAtac"], inputs=[ToolInput(tag="in_two", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc="")), ToolInput(tag="in_one", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_asm_file_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_asm_file_two", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_matches_dot_sim_four_db", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_matches_dot_atac", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Converttoatac_V0_1_0().translate("wdl", allow_empty_container=True)

