from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Scmap_Preprocess_Sce_R_V0_1_0 = CommandToolBuilder(tool="scmap_preprocess_sce.R", base_command=["scmap-preprocess-sce.R"], inputs=[ToolInput(tag="in_input_object", input_type=File(optional=True), prefix="--input-object", doc=InputDocumentation(doc="Path to an SCE object in .rds format")), ToolInput(tag="in_output_sce_object", input_type=File(optional=True), prefix="--output-sce-object", doc=InputDocumentation(doc="Path for the output object in .rds format"))], outputs=[ToolOutput(tag="out_output_sce_object", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_sce_object", type_hint=File()), doc=OutputDocumentation(doc="Path for the output object in .rds format"))], container="quay.io/biocontainers/scmap-cli:0.0.11--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scmap_Preprocess_Sce_R_V0_1_0().translate("wdl")

