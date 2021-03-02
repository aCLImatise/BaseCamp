from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ladump_V0_1_0 = CommandToolBuilder(tool="LAdump", base_command=["LAdump"], inputs=[ToolInput(tag="in_c_ae_be", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": C #ab #ae #bb #be - #a[#ab,#ae] aligns with #b^#o[#bb,#be]")), ToolInput(tag="in_d_there_differences", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc=": D #               - there are # differences in the LA")), ToolInput(tag="in_t_there_trace", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=": T #n              - there are #n trace point intervals for the LA\n(#d #y )^#n      - there are #d difference aligning the #y bp's of B with the\nnext fixed-size interval of A")), ToolInput(tag="in_l_la_lb", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc=": L #la #lb         - #la is the length of the a-read and #lb that of the b-read")), ToolInput(tag="in_output_proper_overlaps", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc=": Output proper overlaps only")), ToolInput(tag="in_cdt_lo", input_type=Boolean(optional=True), prefix="-cdtlo", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ladump_V0_1_0().translate("wdl", allow_empty_container=True)

