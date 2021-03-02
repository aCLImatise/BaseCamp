from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fixtri_Sh_Awk_Program_V0_1_0 = CommandToolBuilder(tool="fixTri.sh_AWK_PROGRAM", base_command=["fixTri.sh", "AWK_PROGRAM"], inputs=[ToolInput(tag="in_awk_program", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tri_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fixtri_Sh_Awk_Program_V0_1_0().translate("wdl", allow_empty_container=True)

