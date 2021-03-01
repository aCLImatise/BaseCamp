from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Cactus_Setup_V0_1_0 = CommandToolBuilder(tool="cactus_setup", base_command=["cactus_setup"], inputs=[ToolInput(tag="in_loglevel", input_type=Boolean(optional=True), prefix="--logLevel", doc=InputDocumentation(doc=": Set the log level")), ToolInput(tag="in_cactus_disk", input_type=Boolean(optional=True), prefix="--cactusDisk", doc=InputDocumentation(doc=": The location of the flower disk directory")), ToolInput(tag="in_species_tree", input_type=Boolean(optional=True), prefix="--speciesTree", doc=InputDocumentation(doc=": The species tree, which will form the skeleton of the event tree")), ToolInput(tag="in_out_group_events", input_type=Boolean(optional=True), prefix="--outgroupEvents", doc=InputDocumentation(doc=": Leaf events in the species tree identified as outgroups")), ToolInput(tag="in_make_event_headers_alphanumeric", input_type=Boolean(optional=True), prefix="--makeEventHeadersAlphaNumeric", doc=InputDocumentation(doc=": Remove non alpha-numeric characters from event header names")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc=": Run some extra debug checks at the end"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cactus_Setup_V0_1_0().translate("wdl", allow_empty_container=True)

