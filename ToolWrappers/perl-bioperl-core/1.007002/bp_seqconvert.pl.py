from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Bp_Seqconvert_Pl_V0_1_0 = CommandToolBuilder(tool="bp_seqconvert.pl", base_command=["bp_seqconvert.pl"], inputs=[ToolInput(tag="in_to", input_type=String(optional=True), prefix="--to", doc=InputDocumentation(doc="")), ToolInput(tag="in_from", input_type=String(optional=True), prefix="--from", doc=InputDocumentation(doc="")), ToolInput(tag="in_file_dot_in_format", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Seqconvert_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

