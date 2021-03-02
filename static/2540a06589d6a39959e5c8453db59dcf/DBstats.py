from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dbstats_V0_1_0 = CommandToolBuilder(tool="DBstats", base_command=["DBstats"], inputs=[ToolInput(tag="in_give_stats_untrimmed", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc=": Give stats for the untrimmed database.")), ToolInput(tag="in_show_histogram_read", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc=": Do not show histogram of read lengths.")), ToolInput(tag="in_show_histogram_mask", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=": Show histogram of mask intervals.")), ToolInput(tag="in_use_histogram_buckets", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc=": Use histogram buckets of this size (default 1Kbp).")), ToolInput(tag="in_nu", input_type=Boolean(optional=True), prefix="-nu", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbstats_V0_1_0().translate("wdl", allow_empty_container=True)

