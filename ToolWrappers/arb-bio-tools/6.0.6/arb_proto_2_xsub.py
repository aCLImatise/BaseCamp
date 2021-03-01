from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arb_Proto_2_Xsub_V0_1_0 = CommandToolBuilder(tool="arb_proto_2_xsub", base_command=["arb_proto_2_xsub"], inputs=[ToolInput(tag="in_prototypes_doth", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_xs_header", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_type_map", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arb_Proto_2_Xsub_V0_1_0().translate("wdl", allow_empty_container=True)

