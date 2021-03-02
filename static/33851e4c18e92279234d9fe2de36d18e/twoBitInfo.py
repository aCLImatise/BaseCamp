from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Float

Twobitinfo_V0_1_0 = CommandToolBuilder(tool="twoBitInfo", base_command=["twoBitInfo"], inputs=[ToolInput(tag="in_mask_bed", input_type=String(optional=True), prefix="-maskBed", doc=InputDocumentation(doc="of seq sizes, output BED records that define\nareas with masked sequence")), ToolInput(tag="in_n_bed", input_type=Boolean(optional=True), prefix="-nBed", doc=InputDocumentation(doc="instead of seq sizes, output BED records that define\nareas with N's in sequence")), ToolInput(tag="in_non_s", input_type=Boolean(optional=True), prefix="-noNs", doc=InputDocumentation(doc="outputs the length of each sequence, but does not count Ns")), ToolInput(tag="in_udc_dir", input_type=Boolean(optional=True), prefix="-udcDir", doc=InputDocumentation(doc="=/dir/to/cache - place to put cache for remote bigBed/bigWigs")), ToolInput(tag="in_input_dot_two_bit", input_type=Float(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Twobitinfo_V0_1_0().translate("wdl", allow_empty_container=True)

