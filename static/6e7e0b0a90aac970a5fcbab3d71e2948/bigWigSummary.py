from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File, String

Bigwigsummary_V0_1_0 = CommandToolBuilder(tool="bigWigSummary", base_command=["bigWigSummary"], inputs=[ToolInput(tag="in_type", input_type=Int(optional=True), prefix="-type", doc=InputDocumentation(doc="where X is one of:\nmean - average value in region (default)\nmin - minimum value in region\nmax - maximum value in region\nstd - standard deviation in region\ncoverage - % of region that is covered")), ToolInput(tag="in_udc_dir", input_type=Boolean(optional=True), prefix="-udcDir", doc=InputDocumentation(doc="=/dir/to/cache - place to put cache for remote bigBed/bigWigs")), ToolInput(tag="in_file_dot_bigwig", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_chrom", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_start", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_end", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bigwigsummary_V0_1_0().translate("wdl", allow_empty_container=True)

