from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Sap_V0_1_0 = CommandToolBuilder(tool="sap", base_command=["sap"], inputs=[ToolInput(tag="in_file_one_dot_pdb", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_two_dot_pdb", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_one_two_one", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/sap:1.1.3--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sap_V0_1_0().translate("wdl")

