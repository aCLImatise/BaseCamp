from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Bp_Gccalc_Pl_V0_1_0 = CommandToolBuilder(tool="bp_gccalc.pl", base_command=["bp_gccalc.pl"], inputs=[ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_gc_calc_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Gccalc_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

