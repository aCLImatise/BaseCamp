from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Thermofisher_Commoncore_Data_Xml_V0_1_0 = CommandToolBuilder(tool="ThermoFisher.CommonCore.Data.xml", base_command=["ThermoFisher.CommonCore.Data.xml"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Thermofisher_Commoncore_Data_Xml_V0_1_0().translate("wdl", allow_empty_container=True)

