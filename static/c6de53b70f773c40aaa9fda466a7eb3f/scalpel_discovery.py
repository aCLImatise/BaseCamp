from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Scalpel_Discovery_V0_1_0 = CommandToolBuilder(tool="scalpel_discovery", base_command=["scalpel-discovery"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc=": verbose mode")), ToolInput(tag="in_single", input_type=Boolean(optional=True), prefix="--single", doc=InputDocumentation(doc=": single exome study")), ToolInput(tag="in_de_novo", input_type=Boolean(optional=True), prefix="--denovo", doc=InputDocumentation(doc=": family study (mom,dad,affected,sibling)")), ToolInput(tag="in_somatic", input_type=Boolean(optional=True), prefix="--somatic", doc=InputDocumentation(doc=": normal/tumor study")), ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scalpel_Discovery_V0_1_0().translate("wdl", allow_empty_container=True)

