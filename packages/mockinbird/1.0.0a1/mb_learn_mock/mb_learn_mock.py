from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mb_Learn_Mock_V0_1_0 = CommandToolBuilder(tool="mb_learn_mock", base_command=["mb-learn-mock"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Learn_Mock_V0_1_0().translate("wdl", allow_empty_container=True)

