from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Annotateinexacthomologybedpe_V0_1_0 = CommandToolBuilder(tool="AnnotateInexactHomologyBedpe", base_command=["AnnotateInexactHomologyBedpe"], inputs=[ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools.")), ToolInput(tag="in_required_dot", input_type=String(), position=0, doc=InputDocumentation(doc="DISTANCE=Integer")), ToolInput(tag="in_value_dot", input_type=String(), position=0, doc=InputDocumentation(doc="UNTEMPLATED_SEQUENCE_COLUMN=Integer"))], outputs=[], container="quay.io/biocontainers/gridss:2.10.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Annotateinexacthomologybedpe_V0_1_0().translate("wdl")

