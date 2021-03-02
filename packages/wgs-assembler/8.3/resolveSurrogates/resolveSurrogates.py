from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Resolvesurrogates_V0_1_0 = CommandToolBuilder(tool="resolveSurrogates", base_command=["resolveSurrogates"], inputs=[ToolInput(tag="in_place_frags_surrogates", input_type=String(optional=True), prefix="-S", doc=InputDocumentation(doc="place all frags in singly-placed surrogates if\nat least fraction x can be placed.")), ToolInput(tag="in_place_frags_equivalent", input_type=Boolean(optional=True), prefix="-1", doc=InputDocumentation(doc="place all frags in singly-placed surrogates\naggressively; equivalent to -S 0.0\n")), ToolInput(tag="in_n", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_opts", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Resolvesurrogates_V0_1_0().translate("wdl", allow_empty_container=True)

