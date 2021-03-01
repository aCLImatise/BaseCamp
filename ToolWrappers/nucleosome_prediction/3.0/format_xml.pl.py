from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Format_Xml_Pl_V0_1_0 = CommandToolBuilder(tool="format_xml.pl", base_command=["format_xml.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Format_Xml_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

