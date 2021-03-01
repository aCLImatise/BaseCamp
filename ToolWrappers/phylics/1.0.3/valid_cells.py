from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Valid_Cells_V0_1_0 = CommandToolBuilder(tool="valid_cells", base_command=["valid_cells"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose execution.")), ToolInput(tag="in_sample_name", input_type=String(), position=0, doc=InputDocumentation(doc="Sample name")), ToolInput(tag="in_results_dot_txt", input_type=String(), position=1, doc=InputDocumentation(doc="Path to stats file")), ToolInput(tag="in_seg_copy", input_type=String(), position=2, doc=InputDocumentation(doc="Path to cnvs file")), ToolInput(tag="in_p_one_p_two_dot", input_type=Int(), position=0, doc=InputDocumentation(doc="Values must be compliant to the following format: p.")), ToolInput(tag="in_out_dir", input_type=String(), position=1, doc=InputDocumentation(doc="Path to the output directory"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Valid_Cells_V0_1_0().translate("wdl", allow_empty_container=True)

