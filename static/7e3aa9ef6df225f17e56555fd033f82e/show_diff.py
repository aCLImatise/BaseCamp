from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Show_Diff_V0_1_0 = CommandToolBuilder(tool="show_diff", base_command=["show-diff"], inputs=[ToolInput(tag="in_output_diff_information", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Output diff information as AMOS features")), ToolInput(tag="in_do_show_header", input_type=Boolean(optional=True), prefix="-H", doc=InputDocumentation(doc="Do not show header")), ToolInput(tag="in_show_diff_information_queries", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="Show diff information for queries")), ToolInput(tag="in_show_diff_information_defaultoutputs", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Show diff information for references (default)\nOutputs a list of structural differences for each sequence in")), ToolInput(tag="in_delta_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mummer4:4.0.0rc1--pl526he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Show_Diff_V0_1_0().translate("wdl")

