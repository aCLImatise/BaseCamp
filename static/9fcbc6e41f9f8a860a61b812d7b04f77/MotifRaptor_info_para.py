from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Motifraptor_Info_Para_V0_1_0 = CommandToolBuilder(tool="MotifRaptor_info_para", base_command=["MotifRaptor", "info", "para"], inputs=[ToolInput(tag="in_motif_raptor", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_info", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Motifraptor_Info_Para_V0_1_0().translate("wdl", allow_empty_container=True)

