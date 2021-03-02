from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory

Ncbimeta_Py_V0_1_0 = CommandToolBuilder(tool="NCBImeta.py", base_command=["NCBImeta.py"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Path to the yaml configuration file (ex. config.yaml).")), ToolInput(tag="in_flat", input_type=Directory(optional=True), prefix="--flat", doc=InputDocumentation(doc="Don't create sub-directories in output directory.")), ToolInput(tag="in_email", input_type=File(optional=True), prefix="--email", doc=InputDocumentation(doc="User email to override parameter in config file.")), ToolInput(tag="in_api", input_type=File(optional=True), prefix="--api", doc=InputDocumentation(doc="User API key to override parameter in config file.")), ToolInput(tag="in_force_pause_seconds", input_type=File(optional=True), prefix="--force-pause-seconds", doc=InputDocumentation(doc="FORCE PAUSE SECONDS to override parameter in config\nfile.\n"))], outputs=[ToolOutput(tag="out_flat", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_flat", type_hint=File()), doc=OutputDocumentation(doc="Don't create sub-directories in output directory."))], container="quay.io/biocontainers/ncbimeta:0.7.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ncbimeta_Py_V0_1_0().translate("wdl")

