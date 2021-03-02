from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Sketchy_Utils_Fx_Filter_V0_1_0 = CommandToolBuilder(tool="sketchy_utils_fx_filter", base_command=["sketchy", "utils", "fx-filter"], inputs=[ToolInput(tag="in_fpath", input_type=File(optional=True), prefix="--fpath", doc=InputDocumentation(doc="Path to Fast{a,q} input file.  [required]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output to Fast{a,q} file. Default stdout [-]")), ToolInput(tag="in_ids", input_type=File(optional=True), prefix="--ids", doc=InputDocumentation(doc="Path to file containing the read IDs to get from\nFast{a,q}.   [required]")), ToolInput(tag="in_column", input_type=Int(optional=True), prefix="--column", doc=InputDocumentation(doc="Column index that contains the IDs (0-based). [1]")), ToolInput(tag="in_sep", input_type=File(optional=True), prefix="--sep", doc=InputDocumentation(doc="File separator to read columns. ['\t']"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output to Fast{a,q} file. Default stdout [-]"))], container="quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Utils_Fx_Filter_V0_1_0().translate("wdl")

