from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Trfbig_V0_1_0 = CommandToolBuilder(tool="trfBig", base_command=["trfBig"], inputs=[ToolInput(tag="in_bed", input_type=File(optional=True), prefix="-bed", doc=InputDocumentation(doc="a bed file in current dir")), ToolInput(tag="in_bed_at", input_type=File(optional=True), prefix="-bedAt", doc=InputDocumentation(doc="- create a bed file at explicit location")), ToolInput(tag="in_tempdir", input_type=String(optional=True), prefix="-tempDir", doc=InputDocumentation(doc="Where to put temp files.")), ToolInput(tag="in_trf", input_type=String(optional=True), prefix="-trf", doc=InputDocumentation(doc="explicitly specifies trf executable name")), ToolInput(tag="in_max_period", input_type=Int(optional=True), prefix="-maxPeriod", doc=InputDocumentation(doc="Maximum period size of repeat (default 2000)")), ToolInput(tag="in_keep", input_type=Boolean(optional=True), prefix="-keep", doc=InputDocumentation(doc="don't delete tmp files")), ToolInput(tag="in_when_used_here", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="when used here, for new trf v4.09 option:\nmaximum TR length expected (in millions)\n(eg, -l=3 for 3 million), Human genome hg38 would need -l=6\n")), ToolInput(tag="in_in_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trfbig_V0_1_0().translate("wdl", allow_empty_container=True)

