from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Sga_Fm_Merge_V0_1_0 = CommandToolBuilder(tool="sga_fm_merge", base_command=["sga", "fm-merge"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="use PREFIX for the names of the index files (default: prefix of the input file)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="use NUM worker threads (default: no threading)")), ToolInput(tag="in_min_overlap", input_type=Int(optional=True), prefix="--min-overlap", doc=InputDocumentation(doc="minimum overlap required between two reads to merge (default: 45)")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="write the merged sequences to FILE (default: basename.merged.fa)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sga_Fm_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

