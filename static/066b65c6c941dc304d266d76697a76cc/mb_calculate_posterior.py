from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mb_Calculate_Posterior_V0_1_0 = CommandToolBuilder(tool="mb_calculate_posterior", base_command=["mb-calculate-posterior"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Calculate_Posterior_V0_1_0().translate("wdl", allow_empty_container=True)

