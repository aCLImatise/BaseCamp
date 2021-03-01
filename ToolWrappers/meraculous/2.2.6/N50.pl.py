from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

N50_Pl_V0_1_0 = CommandToolBuilder(tool="N50.pl", base_command=["N50.pl"], inputs=[ToolInput(tag="in_g", input_type=Int(optional=True), prefix="-G", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    N50_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

