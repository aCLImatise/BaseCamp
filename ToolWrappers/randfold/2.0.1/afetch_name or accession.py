from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Afetch_Name_Or_Accession_V0_1_0 = CommandToolBuilder(tool="afetch_name or accession", base_command=["afetch", "name or accession"], inputs=[ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_a_fetch", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_alignment_database", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_name_or_accession", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Afetch_Name_Or_Accession_V0_1_0().translate("wdl", allow_empty_container=True)

