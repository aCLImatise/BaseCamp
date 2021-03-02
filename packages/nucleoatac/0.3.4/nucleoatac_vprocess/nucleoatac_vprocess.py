from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float, String

Nucleoatac_Vprocess_V0_1_0 = CommandToolBuilder(tool="nucleoatac_vprocess", base_command=["nucleoatac", "vprocess"], inputs=[ToolInput(tag="in_v_plot", input_type=File(optional=True), prefix="--vplot", doc=InputDocumentation(doc="Accepts VMat file. Default is Vplot from S. Cer.")), ToolInput(tag="in_lower", input_type=Int(optional=True), prefix="--lower", doc=InputDocumentation(doc="lower limit (inclusive) in insert size. default is 105")), ToolInput(tag="in_upper", input_type=Int(optional=True), prefix="--upper", doc=InputDocumentation(doc="upper limit (exclusive) in insert size. default 251")), ToolInput(tag="in_flank", input_type=Int(optional=True), prefix="--flank", doc=InputDocumentation(doc="distance on each side of dyad to include")), ToolInput(tag="in_smooth", input_type=Float(optional=True), prefix="--smooth", doc=InputDocumentation(doc="SD to use for gaussian smoothing. Use 0 for no")), ToolInput(tag="in_sizes", input_type=File(optional=True), prefix="--sizes", doc=InputDocumentation(doc="")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="")), ToolInput(tag="in_optional", input_type=String(), position=0, doc=InputDocumentation(doc="--sizes file          Insert distribution file")), ToolInput(tag="in_smoothing_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--plot_extra          Make some additional plots"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nucleoatac_Vprocess_V0_1_0().translate("wdl", allow_empty_container=True)

