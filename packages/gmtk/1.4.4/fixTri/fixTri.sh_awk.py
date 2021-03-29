from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fixtri_Sh_Awk_V0_1_0 = CommandToolBuilder(tool="fixTri.sh_awk", base_command=["fixTri.sh", "awk"], inputs=[ToolInput(tag="in_awk", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tri_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fixtri_Sh_Awk_V0_1_0().translate("wdl", allow_empty_container=True)

