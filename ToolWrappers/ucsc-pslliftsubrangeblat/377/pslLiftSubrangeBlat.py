from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Pslliftsubrangeblat_V0_1_0 = CommandToolBuilder(tool="pslLiftSubrangeBlat", base_command=["pslLiftSubrangeBlat"], inputs=[ToolInput(tag="in_t_sizes", input_type=File(optional=True), prefix="-tSizes", doc=InputDocumentation(doc="- lift target side based on tName, using target sizes from\nthis tab separated file.")), ToolInput(tag="in_q_sizes", input_type=File(optional=True), prefix="-qSizes", doc=InputDocumentation(doc="- lift query side based on qName, using query sizes from\nthis tab separated file.")), ToolInput(tag="in_is_psl", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pslliftsubrangeblat_V0_1_0().translate("wdl", allow_empty_container=True)

