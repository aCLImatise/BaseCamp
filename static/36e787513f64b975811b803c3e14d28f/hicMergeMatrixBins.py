from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean

Hicmergematrixbins_V0_1_0 = CommandToolBuilder(tool="hicMergeMatrixBins", base_command=["hicMergeMatrixBins"], inputs=[ToolInput(tag="in_matrix", input_type=Int(optional=True), prefix="--matrix", doc=InputDocumentation(doc="Matrix to reduce in h5 format. (default: None)")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="File name to save the resulting matrix. The output is\nalso a .h5 file. But don't add the suffix. (default:\nNone)")), ToolInput(tag="in_num_bins", input_type=Int(optional=True), prefix="--numBins", doc=InputDocumentation(doc="Number of bins to merge. (default: None)")), ToolInput(tag="in_running_window", input_type=Boolean(optional=True), prefix="--runningWindow", doc=InputDocumentation(doc="Set to merge for using a running window of length")), ToolInput(tag="in_num_bins_dot", input_type=Boolean(optional=True), prefix="--numBins.", doc=InputDocumentation(doc="(default: False)"))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="File name to save the resulting matrix. The output is\nalso a .h5 file. But don't add the suffix. (default:\nNone)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicmergematrixbins_V0_1_0().translate("wdl", allow_empty_container=True)

