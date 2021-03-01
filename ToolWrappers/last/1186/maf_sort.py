from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Maf_Sort_V0_1_0 = CommandToolBuilder(tool="maf_sort", base_command=["maf-sort"], inputs=[ToolInput(tag="in_only_print_duplicate", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="only print duplicate alignments")), ToolInput(tag="in_sort_nth_sequence", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="sort by the n-th sequence (default: 1)")), ToolInput(tag="in_my_alignments_dot_maf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/last:1186--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Sort_V0_1_0().translate("wdl")

