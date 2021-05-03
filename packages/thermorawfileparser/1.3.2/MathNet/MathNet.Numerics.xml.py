from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mathnet_Numerics_Xml_V0_1_0 = CommandToolBuilder(tool="MathNet.Numerics.xml", base_command=["MathNet.Numerics.xml"], inputs=[], outputs=[], container="quay.io/biocontainers/thermorawfileparser:1.3.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mathnet_Numerics_Xml_V0_1_0().translate("wdl")

