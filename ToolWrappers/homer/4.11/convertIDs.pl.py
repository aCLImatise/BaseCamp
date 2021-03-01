from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Convertids_Pl_V0_1_0 = CommandToolBuilder(tool="convertIDs.pl", base_command=["convertIDs.pl"], inputs=[ToolInput(tag="in_input_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_organism", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_id_type", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_header", input_type=String(optional=True), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_keep", input_type=String(optional=True), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_original", input_type=String(optional=True), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_all", input_type=String(optional=True), position=7, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convertids_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

