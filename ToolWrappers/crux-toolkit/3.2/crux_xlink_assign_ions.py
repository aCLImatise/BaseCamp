from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Crux_Xlink_Assign_Ions_V0_1_0 = CommandToolBuilder(tool="crux_xlink_assign_ions", base_command=["crux", "xlink-assign-ions"], inputs=[ToolInput(tag="in_peptide_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_peptide_b", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_pos_a", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_pos_b", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_link_mass", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_charge_state", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_scan_number", input_type=Int(), position=6, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crux_Xlink_Assign_Ions_V0_1_0().translate("wdl", allow_empty_container=True)

