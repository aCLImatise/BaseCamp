from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pandaseq_Diff_V0_1_0 = CommandToolBuilder(tool="pandaseq_diff", base_command=["pandaseq-diff"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pandaseq_Diff_V0_1_0().translate("wdl", allow_empty_container=True)

