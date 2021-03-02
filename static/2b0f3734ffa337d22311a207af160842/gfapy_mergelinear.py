from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gfapy_Mergelinear_V0_1_0 = CommandToolBuilder(tool="gfapy_mergelinear", base_command=["gfapy-mergelinear"], inputs=[ToolInput(tag="in_redundant", input_type=Boolean(optional=True), prefix="--redundant", doc=InputDocumentation(doc="create redundant paths, similar to the contigs\nconstructed by Readjoiner")), ToolInput(tag="in_no_progress", input_type=Boolean(optional=True), prefix="--no-progress", doc=InputDocumentation(doc="do not show progress log")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="suppress output")), ToolInput(tag="in_v_level", input_type=String(optional=True), prefix="--vlevel", doc=InputDocumentation(doc="validation level"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gfapy_Mergelinear_V0_1_0().translate("wdl", allow_empty_container=True)

