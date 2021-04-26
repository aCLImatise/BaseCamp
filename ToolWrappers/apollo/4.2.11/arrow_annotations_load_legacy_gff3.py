from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Arrow_Annotations_Load_Legacy_Gff3_V0_1_0 = CommandToolBuilder(tool="arrow_annotations_load_legacy_gff3", base_command=["arrow", "annotations", "load_legacy_gff3"], inputs=[ToolInput(tag="in_source", input_type=String(optional=True), prefix="--source", doc=InputDocumentation(doc="URL where the input dataset can be found.")), ToolInput(tag="in_organism", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gff_three", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/apollo:4.2.11--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Annotations_Load_Legacy_Gff3_V0_1_0().translate("wdl")

