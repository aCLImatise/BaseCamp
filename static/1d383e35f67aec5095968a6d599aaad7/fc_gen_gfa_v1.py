from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fc_Gen_Gfa_V1_V0_1_0 = CommandToolBuilder(tool="fc_gen_gfa_v1", base_command=["fc_gen_gfa_v1"], inputs=[ToolInput(tag="in_collected_gfa", input_type=String(), position=0, doc=InputDocumentation(doc="Path to the file with collected and formatted data for generating the GFA"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Gen_Gfa_V1_V0_1_0().translate("wdl", allow_empty_container=True)

