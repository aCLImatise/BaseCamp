from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Sga_Oview_V0_1_0 = CommandToolBuilder(tool="sga_oview", base_command=["sga", "oview"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="--id", doc=InputDocumentation(doc="only show overlaps for read with ID")), ToolInput(tag="in_max_overhang", input_type=Int(optional=True), prefix="--max-overhang", doc=InputDocumentation(doc="only show D overhanging bases of the alignments (default: 6)")), ToolInput(tag="in_default_padding", input_type=Int(optional=True), prefix="--default-padding", doc=InputDocumentation(doc="pad the overlap lines with D characters (default: 20)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sga_Oview_V0_1_0().translate("wdl", allow_empty_container=True)

