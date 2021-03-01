from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Bedclip_V0_1_0 = CommandToolBuilder(tool="bedClip", base_command=["bedClip"], inputs=[ToolInput(tag="in_truncate", input_type=Boolean(optional=True), prefix="-truncate", doc=InputDocumentation(doc="- truncate items that span ends of chrom instead of the\ndefault of dropping the items")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="-verbose", doc=InputDocumentation(doc="- set to get list of lines clipped and why")), ToolInput(tag="in_input_dot_bed", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_chrom_dot_sizes", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedclip_V0_1_0().translate("wdl", allow_empty_container=True)

