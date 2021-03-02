from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


System_Valuetuple_Xml_V0_1_0 = CommandToolBuilder(tool="System.ValueTuple.xml", base_command=["System.ValueTuple.xml"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    System_Valuetuple_Xml_V0_1_0().translate("wdl", allow_empty_container=True)

