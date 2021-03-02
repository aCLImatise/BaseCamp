from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Build_Lmer_Table_V0_1_0 = CommandToolBuilder(tool="build_lmer_table", base_command=["build_lmer_table"], inputs=[ToolInput(tag="in_tandem", input_type=Int(optional=True), prefix="-tandem", doc=InputDocumentation(doc="--- tandem distance window (def: 500)")), ToolInput(tag="in_min", input_type=Boolean(optional=True), prefix="-min", doc=InputDocumentation(doc="<#> --- smallest number of required lmers (def: 3)")), ToolInput(tag="in___output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="--- output a small amount of debugging information.")), ToolInput(tag="in_freq", input_type=String(optional=True), prefix="-freq", doc=InputDocumentation(doc="")), ToolInput(tag="in_sequence", input_type=String(optional=True), prefix="-sequence", doc=InputDocumentation(doc="")), ToolInput(tag="in_l", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_opts", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Build_Lmer_Table_V0_1_0().translate("wdl", allow_empty_container=True)

