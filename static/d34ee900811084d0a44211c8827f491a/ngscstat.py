from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Ngscstat_V0_1_0 = CommandToolBuilder(tool="ngscstat", base_command=["ngscstat"], inputs=[ToolInput(tag="in_int_minimum_alignment", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="INT      minimum alignment quality [30]")), ToolInput(tag="in_int_maximum_read", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="INT      maximum read depth [500]")), ToolInput(tag="in_int_maximum_insert", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="INT      maximum insert size [1000]")), ToolInput(tag="in_bam_files", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/purge_dups:1.2.5--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ngscstat_V0_1_0().translate("wdl")

