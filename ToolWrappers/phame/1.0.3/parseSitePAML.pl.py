from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsesitepaml_Pl_V0_1_0 = CommandToolBuilder(tool="parseSitePAML.pl", base_command=["parseSitePAML.pl"], inputs=[ToolInput(tag="in_defined_dot", input_type=String(), position=0, doc=InputDocumentation(doc="It was interpreted as a '' or a 0, but maybe it was a mistake."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsesitepaml_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

