from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Ixixx_V0_1_0 = CommandToolBuilder(tool="ixIxx", base_command=["ixIxx"], inputs=[ToolInput(tag="in_prefix_size", input_type=Int(optional=True), prefix="-prefixSize", doc=InputDocumentation(doc="Size of prefix to index on in ixx.  Default is 5.")), ToolInput(tag="in_binsize", input_type=Int(optional=True), prefix="-binSize", doc=InputDocumentation(doc="Size of bins in ixx.  Default is 64k.")), ToolInput(tag="in_in_dot_text", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_do_tix", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ixixx_V0_1_0().translate("wdl", allow_empty_container=True)

