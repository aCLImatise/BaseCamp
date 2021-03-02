from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mafmefirst_V0_1_0 = CommandToolBuilder(tool="mafMeFirst", base_command=["mafMeFirst"], inputs=[ToolInput(tag="in_in_dot_maf", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_me_dot_list", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mafmefirst_V0_1_0().translate("wdl", allow_empty_container=True)

