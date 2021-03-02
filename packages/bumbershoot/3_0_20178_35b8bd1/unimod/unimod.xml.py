from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Unimod_Xml_V0_1_0 = CommandToolBuilder(tool="unimod.xml", base_command=["unimod.xml"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Unimod_Xml_V0_1_0().translate("wdl", allow_empty_container=True)

