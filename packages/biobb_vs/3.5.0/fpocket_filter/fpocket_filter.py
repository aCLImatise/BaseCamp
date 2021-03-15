from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Fpocket_Filter_V0_1_0 = CommandToolBuilder(tool="fpocket_filter", base_command=["fpocket_filter"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_input_pockets_zip", input_type=File(optional=True), prefix="--input_pockets_zip", doc=InputDocumentation(doc="Path to all the pockets found by fpocket. Accepted formats: zip.")), ToolInput(tag="in_input_summary", input_type=File(optional=True), prefix="--input_summary", doc=InputDocumentation(doc="Path to the JSON summary file returned by fpocket. Accepted formats: json.")), ToolInput(tag="in_output_filter_pockets_zip", input_type=File(optional=True), prefix="--output_filter_pockets_zip", doc=InputDocumentation(doc="Path to the selected pockets after filtering. Accepted formats: zip.\n"))], outputs=[], container="quay.io/biocontainers/biobb_vs:3.5.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fpocket_Filter_V0_1_0().translate("wdl")

