from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Varda2_Client_Seq_V0_1_0 = CommandToolBuilder(tool="varda2_client_seq", base_command=["varda2-client", "seq"], inputs=[ToolInput(tag="in_sequence", input_type=String(optional=True), prefix="--sequence", doc=InputDocumentation(doc="Sequence\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varda2_Client_Seq_V0_1_0().translate("wdl", allow_empty_container=True)

