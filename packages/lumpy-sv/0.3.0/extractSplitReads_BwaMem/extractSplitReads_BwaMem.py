from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Extractsplitreads_Bwamem_V0_1_0 = CommandToolBuilder(tool="extractSplitReads_BwaMem", base_command=["extractSplitReads_BwaMem"], inputs=[ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--inFile", doc=InputDocumentation(doc="A SAM file or standard input (-i stdin).")), ToolInput(tag="in_num_splits", input_type=Int(optional=True), prefix="--numSplits", doc=InputDocumentation(doc="The maximum number of split-read mappings to allow per\nread. Reads with more are excluded. Default=2")), ToolInput(tag="in_included_ups", input_type=Boolean(optional=True), prefix="--includeDups", doc=InputDocumentation(doc="Include alignments marked as duplicates. Default=False")), ToolInput(tag="in_min_non_overlap", input_type=Int(optional=True), prefix="--minNonOverlap", doc=InputDocumentation(doc="minimum non-overlap between split alignments on the\nquery (default=20)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extractsplitreads_Bwamem_V0_1_0().translate("wdl", allow_empty_container=True)

