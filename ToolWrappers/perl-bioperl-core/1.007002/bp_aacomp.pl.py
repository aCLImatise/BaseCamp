from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Bp_Aacomp_Pl_V0_1_0 = CommandToolBuilder(tool="bp_aacomp.pl", base_command=["bp_aacomp.pl"], inputs=[ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_aa_comp", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Aacomp_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

