from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Fastqstatsandsubsample_V0_1_0 = CommandToolBuilder(tool="fastqStatsAndSubsample", base_command=["fastqStatsAndSubsample"], inputs=[ToolInput(tag="in_sample_size", input_type=Int(optional=True), prefix="-sampleSize", doc=InputDocumentation(doc="- default 100000")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="-seed", doc=InputDocumentation(doc="- Use given seed for random number generator.  Default 0.")), ToolInput(tag="in_small_ok", input_type=Boolean(optional=True), prefix="-smallOk", doc=InputDocumentation(doc="- Not an error if less than sampleSize reads.  out.fastq will be entire in.fastq")), ToolInput(tag="in_json", input_type=Boolean(optional=True), prefix="-json", doc=InputDocumentation(doc="- out.stats will be in json rather than text format")), ToolInput(tag="in_in_dot_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_stats", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastqstatsandsubsample_V0_1_0().translate("wdl", allow_empty_container=True)

