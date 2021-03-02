from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ada_Model_Builder_Ntchange_R_V0_1_0 = CommandToolBuilder(tool="ada_model_builder_ntChange.R", base_command=["ada_model_builder_ntChange.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ada_Model_Builder_Ntchange_R_V0_1_0().translate("wdl", allow_empty_container=True)

