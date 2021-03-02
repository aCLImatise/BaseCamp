from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Seqtk_Famask_V0_1_0 = CommandToolBuilder(tool="seqtk_famask", base_command=["seqtk", "famask"], inputs=[ToolInput(tag="in_src_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_mask_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqtk_Famask_V0_1_0().translate("wdl", allow_empty_container=True)

