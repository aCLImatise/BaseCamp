from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Lightning_Train_V0_1_0 = CommandToolBuilder(tool="lightning_train", base_command=["lightning_train"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lightning_Train_V0_1_0().translate("wdl", allow_empty_container=True)

