from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Cactus_Halgenerator_V0_1_0 = CommandToolBuilder(tool="cactus_halGenerator", base_command=["cactus_halGenerator"], inputs=[ToolInput(tag="in_loglevel", input_type=Boolean(optional=True), prefix="--logLevel", doc=InputDocumentation(doc=": Set the log level")), ToolInput(tag="in_cactus_disk", input_type=Boolean(optional=True), prefix="--cactusDisk", doc=InputDocumentation(doc=": The location of the flower disk directory")), ToolInput(tag="in_secondary_disk", input_type=Boolean(optional=True), prefix="--secondaryDisk", doc=InputDocumentation(doc=": The location of secondary disk")), ToolInput(tag="in_reference_event_string", input_type=Boolean(optional=True), prefix="--referenceEventString", doc=InputDocumentation(doc=": String identifying the reference event.")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--outputFile", doc=InputDocumentation(doc=": File to put final output in.")), ToolInput(tag="in_show_only_substitutions_with_respect_to_reference", input_type=Boolean(optional=True), prefix="--showOnlySubstitutionsWithRespectToReference", doc=InputDocumentation(doc=": Put stars in place of characters that are identical to the reference."))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc=": File to put final output in."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cactus_Halgenerator_V0_1_0().translate("wdl", allow_empty_container=True)

