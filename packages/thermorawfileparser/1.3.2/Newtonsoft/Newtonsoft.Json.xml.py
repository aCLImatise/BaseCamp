from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Newtonsoft_Json_Xml_V0_1_0 = CommandToolBuilder(tool="Newtonsoft.Json.xml", base_command=["Newtonsoft.Json.xml"], inputs=[], outputs=[], container="quay.io/biocontainers/thermorawfileparser:1.3.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Newtonsoft_Json_Xml_V0_1_0().translate("wdl")

