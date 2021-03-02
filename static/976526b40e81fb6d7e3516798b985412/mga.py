from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Mga_V0_1_0 = CommandToolBuilder(tool="mga", base_command=["mga"], inputs=[ToolInput(tag="in_multiple_species_sequences", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=": multiple species (sequences are individually treated)")), ToolInput(tag="in_single_species_sequences", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": single species (sequences are treated as a unit)")), ToolInput(tag="in_fast_a", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mga_V0_1_0().translate("wdl", allow_empty_container=True)

