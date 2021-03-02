from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Goenrichment_V0_1_0 = CommandToolBuilder(tool="goenrichment", base_command=["goenrichment"], inputs=[ToolInput(tag="in_go", input_type=File(optional=True), prefix="--go", doc=InputDocumentation(doc="Path to the Gene Ontology OBO or OWL file")), ToolInput(tag="in_annotation", input_type=File(optional=True), prefix="--annotation", doc=InputDocumentation(doc="Path to the tabular annotation file (GAF, BLAST2GO or 2-column table format")), ToolInput(tag="in_study", input_type=File(optional=True), prefix="--study", doc=InputDocumentation(doc="Path to the file listing the study set gene products"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Goenrichment_V0_1_0().translate("wdl", allow_empty_container=True)

