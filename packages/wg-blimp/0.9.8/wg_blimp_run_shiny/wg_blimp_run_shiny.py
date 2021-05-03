from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Wg_Blimp_Run_Shiny_V0_1_0 = CommandToolBuilder(tool="wg_blimp_run_shiny", base_command=["wg-blimp", "run-shiny"], inputs=[ToolInput(tag="in_host", input_type=String(optional=True), prefix="--host", doc=InputDocumentation(doc="Host ip for shiny to listen on.")), ToolInput(tag="in_port", input_type=Int(optional=True), prefix="--port", doc=InputDocumentation(doc="Shiny port number.")), ToolInput(tag="in_config_files_dot_dot_dot", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/wg-blimp:0.9.8--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wg_Blimp_Run_Shiny_V0_1_0().translate("wdl")

