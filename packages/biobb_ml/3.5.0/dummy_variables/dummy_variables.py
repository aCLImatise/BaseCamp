from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Dummy_Variables_V0_1_0 = CommandToolBuilder(tool="dummy_variables", base_command=["dummy_variables"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_input_dataset_path", input_type=File(optional=True), prefix="--input_dataset_path", doc=InputDocumentation(doc="Path to the input dataset. Accepted formats: csv.")), ToolInput(tag="in_output_dataset_path", input_type=File(optional=True), prefix="--output_dataset_path", doc=InputDocumentation(doc="Path to the output dataset. Accepted formats: csv.\n"))], outputs=[ToolOutput(tag="out_output_dataset_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_dataset_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the output dataset. Accepted formats: csv.\n"))], container="quay.io/biocontainers/biobb_ml:3.5.0--pyhafabc51_3", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dummy_Variables_V0_1_0().translate("wdl")

