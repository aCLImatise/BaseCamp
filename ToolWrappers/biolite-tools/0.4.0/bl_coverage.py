from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bl_Coverage_V0_1_0 = CommandToolBuilder(tool="bl_coverage", base_command=["bl-coverage"], inputs=[ToolInput(tag="in_specify_input_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="specify SAM input file")), ToolInput(tag="in_sam_input_has", input_type=Boolean(optional=True), prefix="-1", doc=InputDocumentation(doc="SAM input has a single reference: report coverage for each index\nin the reference\n")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_coverage", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bl_Coverage_V0_1_0().translate("wdl", allow_empty_container=True)

