from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Generateponbedpe_V0_1_0 = CommandToolBuilder(tool="GeneratePonBedpe", base_command=["GeneratePonBedpe"], inputs=[ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools.")), ToolInput(tag="in_value_dot", input_type=String(), position=1, doc=InputDocumentation(doc="INCLUDE_IMPRECISE_CALLS=Boolean"))], outputs=[], container="quay.io/biocontainers/gridss:2.11.1--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generateponbedpe_V0_1_0().translate("wdl")

