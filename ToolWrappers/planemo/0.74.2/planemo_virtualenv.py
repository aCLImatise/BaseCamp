from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Planemo_Virtualenv_V0_1_0 = CommandToolBuilder(tool="planemo_virtualenv", base_command=["planemo", "virtualenv"], inputs=[ToolInput(tag="in_virtual_env_path", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/planemo:0.74.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Virtualenv_V0_1_0().translate("wdl")

