from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Saddle2Gml_Pl_V0_1_0 = CommandToolBuilder(tool="saddle2gml.pl", base_command=["saddle2gml.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Saddle2Gml_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

