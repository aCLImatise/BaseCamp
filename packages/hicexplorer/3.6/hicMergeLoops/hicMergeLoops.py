from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Int

Hicmergeloops_V0_1_0 = CommandToolBuilder(tool="hicMergeLoops", base_command=["hicMergeLoops"], inputs=[ToolInput(tag="in_input_files", input_type=Array(t=String(), optional=True), prefix="--inputFiles", doc=InputDocumentation(doc="The loop files from hicDetectLoops. To use files from\nother sources, please follow 'chr start end chr start\nend' format and remove any header.")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="The name of the merged loop file.")), ToolInput(tag="in_lowest_resolution", input_type=Int(optional=True), prefix="--lowestResolution", doc=InputDocumentation(doc="The lowest resolution of all loop files, i.e. 5kb,\n10kb and 25kb, please use 25000."))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="The name of the merged loop file."))], container="quay.io/biocontainers/hicexplorer:3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicmergeloops_V0_1_0().translate("wdl")

