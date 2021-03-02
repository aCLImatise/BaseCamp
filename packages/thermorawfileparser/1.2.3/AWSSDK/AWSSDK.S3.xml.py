from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Awssdk_S3_Xml_V0_1_0 = CommandToolBuilder(tool="AWSSDK.S3.xml", base_command=["AWSSDK.S3.xml"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Awssdk_S3_Xml_V0_1_0().translate("wdl", allow_empty_container=True)

