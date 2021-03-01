from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory

Amos2Ace_V0_1_0 = CommandToolBuilder(tool="amos2ace", base_command=["amos2ace"], inputs=[ToolInput(tag="in_location_of_chromatograms", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="Location of the chromatograms")), ToolInput(tag="in_location_phd_directory", input_type=Directory(optional=True), prefix="-p", doc=InputDocumentation(doc="Location of the PHD directory"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amos2Ace_V0_1_0().translate("wdl", allow_empty_container=True)

