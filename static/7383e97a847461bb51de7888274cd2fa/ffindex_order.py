from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ffindex_Order_V0_1_0 = CommandToolBuilder(tool="ffindex_order", base_command=["ffindex_order"], inputs=[ToolInput(tag="in_order_filename", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_data_filename", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_index_filename", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_sorted_data_out_file", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_sorted_index_out_file", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/hhsuite:3.3.0--py38pl526h6ed170a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ffindex_Order_V0_1_0().translate("wdl")

