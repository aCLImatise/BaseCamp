from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Reportalignmentdifferences_V0_1_0 = CommandToolBuilder(tool="reportAlignmentDifferences", base_command=["reportAlignmentDifferences"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_snapper_two", input_type=Int(), position=0, doc=InputDocumentation(doc="-queries Q.fasta"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reportalignmentdifferences_V0_1_0().translate("wdl", allow_empty_container=True)

