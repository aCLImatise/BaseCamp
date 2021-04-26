from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gimme_V0_1_0 = CommandToolBuilder(tool="gimme", base_command=["gimme"], inputs=[ToolInput(tag="in_subcommand", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/gimmemotifs:0.15.3--py38hc37a69a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gimme_V0_1_0().translate("wdl")

