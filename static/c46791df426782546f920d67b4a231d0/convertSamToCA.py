from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Convertsamtoca_V0_1_0 = CommandToolBuilder(tool="convertSamToCA", base_command=["convertSamToCA"], inputs=[ToolInput(tag="in_sam_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_eid_to_iid_mapping", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_iid", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(optional=True), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_length", input_type=Int(optional=True), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_mapping", input_type=String(optional=True), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convertsamtoca_V0_1_0().translate("wdl", allow_empty_container=True)

