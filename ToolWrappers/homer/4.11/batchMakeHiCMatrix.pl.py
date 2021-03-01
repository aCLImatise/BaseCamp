from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Batchmakehicmatrix_Pl_V0_1_0 = CommandToolBuilder(tool="batchMakeHiCMatrix.pl", base_command=["batchMakeHiCMatrix.pl"], inputs=[ToolInput(tag="in_tag_directories_hic", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="[HiC TagDir2] ... (Tag Directories of Hi-C experiments to visulize)")), ToolInput(tag="in_pos", input_type=Boolean(optional=True), prefix="-pos", doc=InputDocumentation(doc="<chr:start-end> (genomic position to visualize)")), ToolInput(tag="in_res", input_type=Boolean(optional=True), prefix="-res", doc=InputDocumentation(doc="<#> (resolution of step size to use for analysis)")), ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="-window", doc=InputDocumentation(doc="<#> (resolution of window size for aggregating interactions)")), ToolInput(tag="in_balance", input_type=Boolean(optional=True), prefix="-balance", doc=InputDocumentation(doc="(balance resulting Hi-C matrix)")), ToolInput(tag="in_stack", input_type=Boolean(optional=True), prefix="-stack", doc=InputDocumentation(doc="(Stacks matricies on top of one another i.e. square and symetric, non-rotated, default)")), ToolInput(tag="in_split", input_type=Boolean(optional=True), prefix="-split", doc=InputDocumentation(doc="(Creates split matricies i.e. square, non-symetric, non-rotated)\n(printed in order of directories: 1\2 3\4 5\6 ...)")), ToolInput(tag="in_rotate", input_type=Boolean(optional=True), prefix="-rotate", doc=InputDocumentation(doc="(Rotates matrices, default)")), ToolInput(tag="in_frac", input_type=Boolean(optional=True), prefix="-frac", doc=InputDocumentation(doc="<#> (fraction of square matrix to consider for rotating, default: 0.333)")), ToolInput(tag="in_cpu", input_type=Boolean(optional=True), prefix="-cpu", doc=InputDocumentation(doc="(number of different processes to use, def: 1)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Batchmakehicmatrix_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

