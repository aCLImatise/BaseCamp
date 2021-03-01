from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Thermofisher_Commoncore_Data_Dll_V0_1_0 = CommandToolBuilder(tool="ThermoFisher.CommonCore.Data.dll", base_command=["ThermoFisher.CommonCore.Data.dll"], inputs=[], outputs=[], container="quay.io/biocontainers/thermorawfileparser:1.3.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Thermofisher_Commoncore_Data_Dll_V0_1_0().translate("wdl")

