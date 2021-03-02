from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Xgboost_Model_Builder_Ntchange_R_V0_1_0 = CommandToolBuilder(tool="xgboost_model_builder_ntChange.R", base_command=["xgboost_model_builder_ntChange.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xgboost_Model_Builder_Ntchange_R_V0_1_0().translate("wdl", allow_empty_container=True)

