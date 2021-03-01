from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Pegasus_Scp_Output_Output_Name_V0_1_0 = CommandToolBuilder(tool="pegasus_scp_output_output_name", base_command=["pegasus", "scp_output", "output_name"], inputs=[ToolInput(tag="in_round_to", input_type=String(optional=True), prefix="--round-to", doc=InputDocumentation(doc="")), ToolInput(tag="in_dense", input_type=Boolean(optional=True), prefix="--dense", doc=InputDocumentation(doc="")), ToolInput(tag="in_pegasus", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_scp_output", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_data_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pegasus_Scp_Output_Output_Name_V0_1_0().translate("wdl")

