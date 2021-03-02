from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Mergedgesparse_V0_1_0 = CommandToolBuilder(tool="MergeDgeSparse", base_command=["MergeDgeSparse"], inputs=[ToolInput(tag="in_default_g", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="(default 4g)")), ToolInput(tag="in_final_command_line", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="final command line before executing")), ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools.")), ToolInput(tag="in_cell_dot", input_type=String(), position=0, doc=InputDocumentation(doc="At least one of RAW_DGE_OUTPUT_FILE and SCALED_DGE_OUTPUT_FILE must be set. ")), ToolInput(tag="in_null_dot", input_type=String(), position=0, doc=InputDocumentation(doc="DISCARDED_CELLS_FILE=File     If set, write a list of cell barcodes that have been filtered by any of the filtering")), ToolInput(tag="in_mechanisms_dot", input_type=String(), position=1, doc=InputDocumentation(doc="Default value: null. ")), ToolInput(tag="in_set_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Default value: STRICT. This option can be set to 'null' to clear the default value."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mergedgesparse_V0_1_0().translate("wdl", allow_empty_container=True)

