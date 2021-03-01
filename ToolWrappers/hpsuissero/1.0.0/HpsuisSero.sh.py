from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Hpsuissero_Sh_V0_1_0 = CommandToolBuilder(tool="HpsuisSero.sh", base_command=["HpsuisSero.sh"], inputs=[ToolInput(tag="in_input_raw_reads", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="input raw reads")), ToolInput(tag="in_path_output_directory", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="path to output directory")), ToolInput(tag="in_sample_name", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="sample name")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads [4]"))], outputs=[ToolOutput(tag="out_path_output_directory", output_type=File(optional=True), selector=InputSelector(input_to_select="in_path_output_directory", type_hint=File()), doc=OutputDocumentation(doc="path to output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hpsuissero_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

