from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Template_For_Qsub_V0_1_0 = CommandToolBuilder(tool="template_for_qsub", base_command=["template_for_qsub"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Template_For_Qsub_V0_1_0().translate("wdl", allow_empty_container=True)

