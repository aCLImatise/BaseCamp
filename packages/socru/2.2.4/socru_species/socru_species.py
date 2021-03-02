from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Socru_Species_V0_1_0 = CommandToolBuilder(tool="socru_species", base_command=["socru_species"], inputs=[ToolInput(tag="in_extended", input_type=Boolean(optional=True), prefix="--extended", doc=InputDocumentation(doc="Extended information about the species databases (default:\nFalse)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Turn on debugging (default: False)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Turn on verbose output (default: False)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Socru_Species_V0_1_0().translate("wdl", allow_empty_container=True)

