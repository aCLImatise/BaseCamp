from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Maftobigmaf_V0_1_0 = CommandToolBuilder(tool="mafToBigMaf", base_command=["mafToBigMaf"], inputs=[ToolInput(tag="in_referenced_b", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_dot_maf", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maftobigmaf_V0_1_0().translate("wdl", allow_empty_container=True)

