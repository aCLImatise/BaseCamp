from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Metagraph_Merge_Anno_V0_1_0 = CommandToolBuilder(tool="metagraph_merge_anno", base_command=["metagraph", "merge_anno"], inputs=[ToolInput(tag="in_an_no_type", input_type=Boolean(optional=True), prefix="--anno-type", doc=InputDocumentation(doc="[STR]    target annotation representation [column]\n( column, brwt, rb_brwt,\nrow_diff, row_diff_brwt, row_diff_sparse,\nrow, flat, rbfish, bin_rel_wt, bin_rel_wt_sdsl )")), ToolInput(tag="in_parallel", input_type=Boolean(optional=True), prefix="--parallel", doc=InputDocumentation(doc="[INT]     use multiple threads for computation [1]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="switch on verbose output [off]")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_an_not_one", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metagraph_Merge_Anno_V0_1_0().translate("wdl")

