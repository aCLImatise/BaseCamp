from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory

Ncbimeta_Py_V0_1_0 = CommandToolBuilder(tool="NCBImeta.py", base_command=["NCBImeta.py"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Path to the yaml configuration file (ex. config.yaml).")), ToolInput(tag="in_flat", input_type=Directory(optional=True), prefix="--flat", doc=InputDocumentation(doc="Don't create sub-directories in output directory."))], outputs=[ToolOutput(tag="out_flat", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_flat", type_hint=File()), doc=OutputDocumentation(doc="Don't create sub-directories in output directory."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ncbimeta_Py_V0_1_0().translate("wdl", allow_empty_container=True)

