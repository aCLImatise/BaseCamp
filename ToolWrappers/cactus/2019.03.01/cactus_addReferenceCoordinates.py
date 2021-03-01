from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Cactus_Addreferencecoordinates_V0_1_0 = CommandToolBuilder(tool="cactus_addReferenceCoordinates", base_command=["cactus_addReferenceCoordinates"], inputs=[ToolInput(tag="in_loglevel", input_type=Boolean(optional=True), prefix="--logLevel", doc=InputDocumentation(doc=": Set the log level")), ToolInput(tag="in_cactus_disk", input_type=Boolean(optional=True), prefix="--cactusDisk", doc=InputDocumentation(doc=": The location of the flower disk directory")), ToolInput(tag="in_secondary_disk", input_type=Boolean(optional=True), prefix="--secondaryDisk", doc=InputDocumentation(doc=": The location of secondary disk")), ToolInput(tag="in_reference_event_string", input_type=Boolean(optional=True), prefix="--referenceEventString", doc=InputDocumentation(doc=": String identifying the reference event.")), ToolInput(tag="in_bottom_up_phase", input_type=Boolean(optional=True), prefix="--bottomUpPhase", doc=InputDocumentation(doc=": Do bottom up stage instead of top down."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cactus_Addreferencecoordinates_V0_1_0().translate("wdl", allow_empty_container=True)

