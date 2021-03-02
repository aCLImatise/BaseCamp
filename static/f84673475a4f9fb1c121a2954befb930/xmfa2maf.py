from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Xmfa2Maf_V0_1_0 = CommandToolBuilder(tool="xmfa2maf", base_command=["xmfa2maf"], inputs=[ToolInput(tag="in_x_mfa_input", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_maf_output", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xmfa2Maf_V0_1_0().translate("wdl", allow_empty_container=True)

