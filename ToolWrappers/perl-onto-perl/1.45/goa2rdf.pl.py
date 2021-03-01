from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Goa2Rdf_Pl_V0_1_0 = CommandToolBuilder(tool="goa2rdf.pl", base_command=["goa2rdf.pl"], inputs=[ToolInput(tag="in_goa_input_file", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="GOA input file")), ToolInput(tag="in_usage", input_type=String(), position=0, doc=InputDocumentation(doc=": goa2rdf.pl [options]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Goa2Rdf_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

