from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Biom_Head_V0_1_0 = CommandToolBuilder(tool="biom_head", base_command=["biom", "head"], inputs=[ToolInput(tag="in_input_fp", input_type=File(optional=True), prefix="--input-fp", doc=InputDocumentation(doc="The input BIOM table  [required]")), ToolInput(tag="in_output_fp", input_type=File(optional=True), prefix="--output-fp", doc=InputDocumentation(doc="An output file-path")), ToolInput(tag="in_n_obs", input_type=Int(optional=True), prefix="--n-obs", doc=InputDocumentation(doc="The number of observations to show")), ToolInput(tag="in_n_samp", input_type=Int(optional=True), prefix="--n-samp", doc=InputDocumentation(doc="The number of samples to show"))], outputs=[ToolOutput(tag="out_output_fp", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fp", type_hint=File()), doc=OutputDocumentation(doc="An output file-path"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biom_Head_V0_1_0().translate("wdl", allow_empty_container=True)

