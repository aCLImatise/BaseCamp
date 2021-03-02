from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

O_Metamds_Analysis_R_V0_1_0 = CommandToolBuilder(tool="o_metaMDS_analysis.R", base_command=["o-metaMDS-analysis.R"], inputs=[ToolInput(tag="in_permute", input_type=String(), position=0, doc=InputDocumentation(doc="Error in file(file, 'rt') : cannot open the connection"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Metamds_Analysis_R_V0_1_0().translate("wdl", allow_empty_container=True)

