from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, File, String

Hicstuff_Subsample_V0_1_0 = CommandToolBuilder(tool="hicstuff_subsample", base_command=["hicstuff", "subsample"], inputs=[ToolInput(tag="in_prop", input_type=Float(optional=True), prefix="--prop", doc=InputDocumentation(doc="Proportion of contacts to sample from the input matrix\nif between 0 and 1. Raw number of contacts to keep if\nsuperior to 1. [default: 0.1]")), ToolInput(tag="in_force", input_type=File(optional=True), prefix="--force", doc=InputDocumentation(doc="Write even if the output file already exists.")), ToolInput(tag="in_contact_map", input_type=String(), position=0, doc=InputDocumentation(doc="Sparse contact matrix in graal, bg2 or cool format.")), ToolInput(tag="in_subsampled_prefix", input_type=String(), position=1, doc=InputDocumentation(doc="Path without extension to the output map in the same\nformat as the input containing only a fraction of the\ncontacts."))], outputs=[ToolOutput(tag="out_force", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force", type_hint=File()), doc=OutputDocumentation(doc="Write even if the output file already exists."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicstuff_Subsample_V0_1_0().translate("wdl", allow_empty_container=True)

