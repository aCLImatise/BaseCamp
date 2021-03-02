from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gbf2Xml_V0_1_0 = CommandToolBuilder(tool="gbf2xml", base_command=["gbf2xml"], inputs=[], outputs=[], container="quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gbf2Xml_V0_1_0().translate("wdl")

