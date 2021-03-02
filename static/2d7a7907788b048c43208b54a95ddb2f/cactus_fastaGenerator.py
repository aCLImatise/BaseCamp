from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Cactus_Fastagenerator_V0_1_0 = CommandToolBuilder(tool="cactus_fastaGenerator", base_command=["cactus_fastaGenerator"], inputs=[ToolInput(tag="in_loglevel", input_type=Boolean(optional=True), prefix="--logLevel", doc=InputDocumentation(doc=": Set the log level")), ToolInput(tag="in_cactus_disk", input_type=Boolean(optional=True), prefix="--cactusDisk", doc=InputDocumentation(doc=": The location of the flower disk directory")), ToolInput(tag="in_reference_event_string", input_type=Boolean(optional=True), prefix="--referenceEventString", doc=InputDocumentation(doc=": String identifying the reference event.")), ToolInput(tag="in_flower_name", input_type=Boolean(optional=True), prefix="--flowerName", doc=InputDocumentation(doc=": Name of flower to print string for.")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--outputFile", doc=InputDocumentation(doc=": File to put final output in."))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc=": File to put final output in."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cactus_Fastagenerator_V0_1_0().translate("wdl", allow_empty_container=True)

