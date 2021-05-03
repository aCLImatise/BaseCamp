from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Thermofisher_Commoncore_Rawfilereader_Dll_V0_1_0 = CommandToolBuilder(tool="ThermoFisher.CommonCore.RawFileReader.dll", base_command=["ThermoFisher.CommonCore.RawFileReader.dll"], inputs=[], outputs=[], container="quay.io/biocontainers/thermorawfileparser:1.3.4--ha8f3691_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Thermofisher_Commoncore_Rawfilereader_Dll_V0_1_0().translate("wdl")

