from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Sga_Merge_V0_1_0 = CommandToolBuilder(tool="sga_merge", base_command=["sga", "merge"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="use NUM threads to merge the indices (default: 1)")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="write final index to files starting with PREFIX (the default is to concatenate the input filenames)")), ToolInput(tag="in_remove", input_type=Boolean(optional=True), prefix="--remove", doc=InputDocumentation(doc="remove the original BWT, SAI and reads files after the merge")), ToolInput(tag="in_gap_array", input_type=Int(optional=True), prefix="--gap-array", doc=InputDocumentation(doc="use N bits of storage for each element of the gap array. Acceptable values are 4,8,16 or 32. Lower\nvalues can substantially reduce the amount of memory required at the cost of less predictable memory usage.\nWhen this value is set to 32, the memory requirement is essentially deterministic and requires ~5N bytes where\nN is the size of the FM-index of READS2.\nThe default value is 4.")), ToolInput(tag="in_no_sequence", input_type=Boolean(optional=True), prefix="--no-sequence", doc=InputDocumentation(doc="Suppress merging of the sequence files. Use this option when merging the index(es) separate e.g. in parallel")), ToolInput(tag="in_no_forward", input_type=Boolean(optional=True), prefix="--no-forward", doc=InputDocumentation(doc="Suppress merging of the forward index. Use this option when merging the index(es) separate e.g. in parallel")), ToolInput(tag="in_no_reverse", input_type=Boolean(optional=True), prefix="--no-reverse", doc=InputDocumentation(doc="Suppress merging of the reverse index. Use this option when merging the index(es) separate e.g. in parallel"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sga_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

