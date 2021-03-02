from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Menepath_V0_1_0 = CommandToolBuilder(tool="menepath", base_command=["menepath"], inputs=[ToolInput(tag="in_draft_net", input_type=String(optional=True), prefix="--draftnet", doc=InputDocumentation(doc="metabolic network in SBML format")), ToolInput(tag="in_seeds", input_type=String(optional=True), prefix="--seeds", doc=InputDocumentation(doc="seeds in SBML format")), ToolInput(tag="in_targets", input_type=String(optional=True), prefix="--targets", doc=InputDocumentation(doc="targets in SBML format")), ToolInput(tag="in_min", input_type=Boolean(optional=True), prefix="--min", doc=InputDocumentation(doc="call this option to obtain minimal-size paths")), ToolInput(tag="in_enumerate", input_type=Boolean(optional=True), prefix="--enumerate", doc=InputDocumentation(doc="call this option for an enumeration of solutions"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Menepath_V0_1_0().translate("wdl", allow_empty_container=True)

