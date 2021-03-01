from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ontoisobsolete_V0_1_0 = CommandToolBuilder(tool="ontoisobsolete", base_command=["ontoisobsolete"], inputs=[ToolInput(tag="in_obo_terms", input_type=Boolean(optional=True), prefix="-oboterms", doc=InputDocumentation(doc=": enter obo value: Error: Unable to get reply from user - end of standard input"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ontoisobsolete_V0_1_0().translate("wdl", allow_empty_container=True)

