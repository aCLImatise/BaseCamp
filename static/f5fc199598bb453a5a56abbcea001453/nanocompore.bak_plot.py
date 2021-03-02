from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Nanocompore_Bak_Plot_V0_1_0 = CommandToolBuilder(tool="nanocompore.bak_plot", base_command=["nanocompore.bak", "plot"], inputs=[ToolInput(tag="in_nano_compo_re_dot_bak", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nanocompore_Bak_Plot_V0_1_0().translate("wdl", allow_empty_container=True)

