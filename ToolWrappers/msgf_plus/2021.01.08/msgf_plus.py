from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Msgf_Plus_V0_1_0 = CommandToolBuilder(tool="msgf_plus", base_command=["msgf_plus"], inputs=[ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_x_mx_three_five_zero_zero_m", input_type=Boolean(optional=True), prefix="-Xmx3500M", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/msgf_plus:2021.01.08--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msgf_Plus_V0_1_0().translate("wdl")

