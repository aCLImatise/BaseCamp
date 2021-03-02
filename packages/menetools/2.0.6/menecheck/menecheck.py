from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Menecheck_V0_1_0 = CommandToolBuilder(tool="menecheck", base_command=["menecheck"], inputs=[ToolInput(tag="in_draft_net", input_type=String(optional=True), prefix="--draftnet", doc=InputDocumentation(doc="metabolic network in SBML format")), ToolInput(tag="in_seeds", input_type=String(optional=True), prefix="--seeds", doc=InputDocumentation(doc="seeds in SBML format")), ToolInput(tag="in_targets", input_type=String(optional=True), prefix="--targets", doc=InputDocumentation(doc="targets in SBML format\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Menecheck_V0_1_0().translate("wdl", allow_empty_container=True)

