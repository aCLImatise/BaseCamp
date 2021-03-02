from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Gtf2Bed_Pl_V0_1_0 = CommandToolBuilder(tool="gtf2bed.pl", base_command=["gtf2bed.pl"], inputs=[ToolInput(tag="in_item_rgb", input_type=String(optional=True), prefix="--itemRgb", doc=InputDocumentation(doc="a string s encoding the RGB value of the form R,G,B (default 0,0,225).")), ToolInput(tag="in_include_stop_in_cds", input_type=Boolean(optional=True), prefix="--includeStopInCDS", doc=InputDocumentation(doc="include stop codon into the coding sequence (default off)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gtf2Bed_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

