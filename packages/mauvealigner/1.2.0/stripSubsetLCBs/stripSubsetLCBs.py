from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Stripsubsetlcbs_V0_1_0 = CommandToolBuilder(tool="stripSubsetLCBs", base_command=["stripSubsetLCBs"], inputs=[ToolInput(tag="in_input_x_mfa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_bbc_ols", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_x_mfa", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_min", input_type=Int(optional=True), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_lcb", input_type=String(optional=True), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_size", input_type=Int(optional=True), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_genomes", input_type=String(optional=True), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_randomly", input_type=String(optional=True), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_subsample", input_type=String(optional=True), position=9, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(optional=True), position=10, doc=InputDocumentation(doc="")), ToolInput(tag="in_x", input_type=String(optional=True), position=11, doc=InputDocumentation(doc="")), ToolInput(tag="in_kb", input_type=String(optional=True), position=12, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stripsubsetlcbs_V0_1_0().translate("wdl", allow_empty_container=True)

