from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Get_Terms_By_Name_Pl_V0_1_0 = CommandToolBuilder(tool="get_terms_by_name.pl", base_command=["get_terms_by_name.pl"], inputs=[ToolInput(tag="in_obo_input_file", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="OBO input file")), ToolInput(tag="in_term_name", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="term name"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Terms_By_Name_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

