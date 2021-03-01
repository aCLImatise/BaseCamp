from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Kronos_Init_V0_1_0 = CommandToolBuilder(tool="kronos_init", base_command=["kronos", "init"], inputs=[ToolInput(tag="in_pipeline_name", input_type=String(optional=True), prefix="--pipeline_name", doc=InputDocumentation(doc="a name for the resultant pipeline")), ToolInput(tag="in_input_samples", input_type=File(optional=True), prefix="--input_samples", doc=InputDocumentation(doc="path to the samples file")), ToolInput(tag="in_setup_file", input_type=File(optional=True), prefix="--setup_file", doc=InputDocumentation(doc="path to the setup file")), ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--config_file", doc=InputDocumentation(doc="path to the config_file.yaml\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kronos_Init_V0_1_0().translate("wdl", allow_empty_container=True)

