from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Generate_Combined_Sequence_V0_1_0 = CommandToolBuilder(tool="generate_combined_sequence", base_command=["generate_combined_sequence"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generate_Combined_Sequence_V0_1_0().translate("wdl", allow_empty_container=True)

