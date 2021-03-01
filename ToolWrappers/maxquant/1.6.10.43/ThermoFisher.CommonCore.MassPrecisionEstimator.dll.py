from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Thermofisher_Commoncore_Massprecisionestimator_Dll_V0_1_0 = CommandToolBuilder(tool="ThermoFisher.CommonCore.MassPrecisionEstimator.dll", base_command=["ThermoFisher.CommonCore.MassPrecisionEstimator.dll"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Thermofisher_Commoncore_Massprecisionestimator_Dll_V0_1_0().translate("wdl", allow_empty_container=True)

