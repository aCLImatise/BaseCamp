from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Coolbox_Run_Webapp_V0_1_0 = CommandToolBuilder(tool="coolbox_run_webapp", base_command=["coolbox", "run_webapp"], inputs=[ToolInput(tag="in_voila_args", input_type=Boolean(optional=True), prefix="--voila_args", doc=InputDocumentation(doc="=[4mVOILA_ARGS[0m\nDefault: '--Voila.ip=0.0.0.0'\nArguments for run jupyter.\n"))], outputs=[], container="quay.io/biocontainers/coolbox:0.3.7--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coolbox_Run_Webapp_V0_1_0().translate("wdl")

