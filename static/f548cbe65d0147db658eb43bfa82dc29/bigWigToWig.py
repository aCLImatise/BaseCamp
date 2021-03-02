from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Bigwigtowig_V0_1_0 = CommandToolBuilder(tool="bigWigToWig", base_command=["bigWigToWig"], inputs=[ToolInput(tag="in_chrom", input_type=Int(optional=True), prefix="-chrom", doc=InputDocumentation(doc="- if set restrict output to given chromosome")), ToolInput(tag="in_start", input_type=String(optional=True), prefix="-start", doc=InputDocumentation(doc="- if set, restrict output to only that over start")), ToolInput(tag="in_end", input_type=String(optional=True), prefix="-end", doc=InputDocumentation(doc="- if set, restict output to only that under end")), ToolInput(tag="in_udc_dir", input_type=Boolean(optional=True), prefix="-udcDir", doc=InputDocumentation(doc="=/dir/to/cache - place to put cache for remote bigBed/bigWigs")), ToolInput(tag="in_in_dot_bigwig", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bigwigtowig_V0_1_0().translate("wdl", allow_empty_container=True)

