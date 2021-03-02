from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ontogetup_V0_1_0 = CommandToolBuilder(tool="ontogetup", base_command=["ontogetup"], inputs=[ToolInput(tag="in_obsolete", input_type=Boolean(optional=True), prefix="-obsolete", doc=InputDocumentation(doc="boolean    [N] The default behaviour is to not use or\nreturn obsolete terms. This option if set\nwill include all terms."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ontogetup_V0_1_0().translate("wdl", allow_empty_container=True)

