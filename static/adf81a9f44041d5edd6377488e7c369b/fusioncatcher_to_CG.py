from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, File, Boolean

Fusioncatcher_To_Cg_V0_1_0 = CommandToolBuilder(tool="fusioncatcher_to_CG", base_command=["fusioncatcher-to-CG"], inputs=[ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="File type of the file to convert")), ToolInput(tag="in_data_directory", input_type=Directory(optional=True), prefix="--data-directory", doc=InputDocumentation(doc="FusionCatcher's data dir\n(/opt/fusioncatcher/data/ensembl_v...)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output filename; '-' for stdout")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output filename; '-' for stdout"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fusioncatcher_To_Cg_V0_1_0().translate("wdl", allow_empty_container=True)

