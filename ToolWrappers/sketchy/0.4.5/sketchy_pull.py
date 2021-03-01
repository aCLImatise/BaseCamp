from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Sketchy_Pull_V0_1_0 = CommandToolBuilder(tool="sketchy_pull", base_command=["sketchy", "pull"], inputs=[ToolInput(tag="in_path", input_type=File(optional=True), prefix="--path", doc=InputDocumentation(doc="Path to sketchy home directory [~/.sketchy ]")), ToolInput(tag="in_full", input_type=Boolean(optional=True), prefix="--full", doc=InputDocumentation(doc="Pull the full default sketch collections [false]"))], outputs=[], container="quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Pull_V0_1_0().translate("wdl")

