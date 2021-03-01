from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Plasmidhawk_Annotate_Plasmid_Metadata_V0_1_0 = CommandToolBuilder(tool="plasmidhawk_annotate_plasmid_metadata", base_command=["plasmidhawk", "annotate", "plasmid-metadata"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_plasmid_hawk", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_annotate", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_frag_metadata", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_plasmid_metadata", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/plasmidhawk:1.0.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plasmidhawk_Annotate_Plasmid_Metadata_V0_1_0().translate("wdl")

