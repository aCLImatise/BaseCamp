from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Obprobe_V0_1_0 = CommandToolBuilder(tool="obprobe", base_command=["obprobe"], inputs=[ToolInput(tag="in_step_size", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="step size")), ToolInput(tag="in_padding", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="padding")), ToolInput(tag="in_hydroxyl_hydrogen_hbd", input_type=Int(), position=0, doc=InputDocumentation(doc="0.4      hydroxyl hydrogen (HBD)")), ToolInput(tag="in_phenyl_carbon_hydrophobic", input_type=Int(), position=1, doc=InputDocumentation(doc="0.0      phenyl carbon (hydrophobic)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Obprobe_V0_1_0().translate("wdl", allow_empty_container=True)

