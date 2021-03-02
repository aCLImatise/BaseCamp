from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

2Bwt_Builder_V0_1_0 = CommandToolBuilder(tool="2bwt_builder", base_command=["2bwt-builder"], inputs=[ToolInput(tag="in_sequence_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_index", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_prefix", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    2Bwt_Builder_V0_1_0().translate("wdl", allow_empty_container=True)

