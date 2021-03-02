from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Thermofisher_Commoncore_Rawfilereader_Xml_V0_1_0 = CommandToolBuilder(tool="ThermoFisher.CommonCore.RawFileReader.xml", base_command=["ThermoFisher.CommonCore.RawFileReader.xml"], inputs=[], outputs=[], container="quay.io/biocontainers/thermorawfileparser:1.3.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Thermofisher_Commoncore_Rawfilereader_Xml_V0_1_0().translate("wdl")

