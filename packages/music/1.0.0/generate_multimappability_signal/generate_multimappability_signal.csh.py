from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Generate_Multimappability_Signal_Csh_V0_1_0 = CommandToolBuilder(tool="generate_multimappability_signal.csh", base_command=["generate_multimappability_signal.csh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generate_Multimappability_Signal_Csh_V0_1_0().translate("wdl", allow_empty_container=True)

