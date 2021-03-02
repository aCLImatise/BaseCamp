from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


G3_From_Training_Csh_V0_1_0 = CommandToolBuilder(tool="g3_from_training.csh", base_command=["g3-from-training.csh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    G3_From_Training_Csh_V0_1_0().translate("wdl", allow_empty_container=True)

