from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Easypqp_Library_Spectra__V0_1_0 = CommandToolBuilder(tool="easypqp_library_spectra.", base_command=["easypqp", "library", "spectra."], inputs=[ToolInput(tag="in_easy_pqp", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_library", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_files", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Easypqp_Library_Spectra__V0_1_0().translate("wdl", allow_empty_container=True)

