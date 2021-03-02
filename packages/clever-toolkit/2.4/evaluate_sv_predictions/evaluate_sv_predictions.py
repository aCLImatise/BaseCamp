from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Evaluate_Sv_Predictions_V0_1_0 = CommandToolBuilder(tool="evaluate_sv_predictions", base_command=["evaluate-sv-predictions"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Evaluate_Sv_Predictions_V0_1_0().translate("wdl", allow_empty_container=True)

