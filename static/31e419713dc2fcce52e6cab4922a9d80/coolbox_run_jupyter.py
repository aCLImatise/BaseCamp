from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Coolbox_Run_Jupyter_V0_1_0 = CommandToolBuilder(tool="coolbox_run_jupyter", base_command=["coolbox", "run_jupyter"], inputs=[ToolInput(tag="in_j_up_y_ter_args", input_type=Boolean(optional=True), prefix="--jupyter_args", doc=InputDocumentation(doc="=[4mJUPYTER_ARGS[0m\nDefault: '--ip=0.0.0.0'\nArguments for run jupyter.\n"))], outputs=[], container="quay.io/biocontainers/coolbox:0.3.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coolbox_Run_Jupyter_V0_1_0().translate("wdl")

