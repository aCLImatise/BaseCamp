from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rdf2Dot_V0_1_0 = CommandToolBuilder(tool="rdf2dot", base_command=["rdf2dot"], inputs=[ToolInput(tag="in_parser_use_given", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="parser to use, if not given,"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rdf2Dot_V0_1_0().translate("wdl", allow_empty_container=True)

