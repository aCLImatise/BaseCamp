from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Deepac_Preproc_V0_1_0 = CommandToolBuilder(tool="deepac_preproc", base_command=["deepac", "preproc"], inputs=[ToolInput(tag="in_config", input_type=String(), position=0, doc=InputDocumentation(doc="Preprocessing config file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Preproc_V0_1_0().translate("wdl", allow_empty_container=True)

