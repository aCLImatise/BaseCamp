from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Chainprenet_V0_1_0 = CommandToolBuilder(tool="chainPreNet", base_command=["chainPreNet"], inputs=[ToolInput(tag="in_dots", input_type=String(optional=True), prefix="-dots", doc=InputDocumentation(doc="- output a dot every so often")), ToolInput(tag="in_pad", input_type=Int(optional=True), prefix="-pad", doc=InputDocumentation(doc="- extra to pad around blocks to decrease trash\n(default 1)")), ToolInput(tag="in_incl_hap", input_type=Boolean(optional=True), prefix="-inclHap", doc=InputDocumentation(doc="- include query sequences name in the form *_hap*|*_alt*.\nNormally these are excluded from nets as being haplotype\npseudochromosomes\n")), ToolInput(tag="in_in_dot_chain", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_target_dot_sizes", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_query_dot_sizes", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chainprenet_V0_1_0().translate("wdl", allow_empty_container=True)

