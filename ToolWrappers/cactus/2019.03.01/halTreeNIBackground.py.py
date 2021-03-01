from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int, Float

Haltreenibackground_Py_V0_1_0 = CommandToolBuilder(tool="halTreeNIBackground.py", base_command=["halTreeNIBackground.py"], inputs=[ToolInput(tag="in_background_bed_name", input_type=String(optional=True), prefix="--backgroundBedName", doc=InputDocumentation(doc="Name function for background bed files where genome\nname is specified as %s. Computed using\nhalTreeNIBackground (default: %%s_bg.bed)")), ToolInput(tag="in_ar", input_type=Boolean(optional=True), prefix="--ar", doc=InputDocumentation(doc="Select only repeatmasked regions (default: False)")), ToolInput(tag="in_ar_extend", input_type=Int(optional=True), prefix="--arExtend", doc=InputDocumentation(doc="Extend selected repeats by given number of bases\n(default: 0)")), ToolInput(tag="in_ar_extend_pct", input_type=Float(optional=True), prefix="--arExtendPct", doc=InputDocumentation(doc="Extend selected repeated regions by given percent\n(default: 0.0)")), ToolInput(tag="in_root", input_type=String(optional=True), prefix="--root", doc=InputDocumentation(doc="root (default: None)")), ToolInput(tag="in_hal", input_type=String(), position=0, doc=InputDocumentation(doc="input hal")), ToolInput(tag="in_workdir", input_type=String(), position=1, doc=InputDocumentation(doc="working dir for all bed files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Haltreenibackground_Py_V0_1_0().translate("wdl", allow_empty_container=True)

