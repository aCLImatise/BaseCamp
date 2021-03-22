from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Funannotate_Species_V0_1_0 = CommandToolBuilder(tool="funannotate_species", base_command=["funannotate", "species"], inputs=[ToolInput(tag="in_d", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_p", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="")), ToolInput(tag="in_s", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_species_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/funannotate:1.8.5--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Funannotate_Species_V0_1_0().translate("wdl")

