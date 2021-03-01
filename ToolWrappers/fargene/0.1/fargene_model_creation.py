from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fargene_Model_Creation_V0_1_0 = CommandToolBuilder(tool="fargene_model_creation", base_command=["fargene_model_creation"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fargene_Model_Creation_V0_1_0().translate("wdl", allow_empty_container=True)

