from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Ontogetsibs_V0_1_0 = CommandToolBuilder(tool="ontogetsibs", base_command=["ontogetsibs"], inputs=[ToolInput(tag="in_obsolete", input_type=Boolean(optional=True), prefix="-obsolete", doc=InputDocumentation(doc="boolean    [N] The default behaviour is to not use or\nreturn obsolete terms. This option if set\nwill include all terms.")), ToolInput(tag="in_name", input_type=String(), position=0, doc=InputDocumentation(doc="Additional (Optional) qualifiers:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ontogetsibs_V0_1_0().translate("wdl", allow_empty_container=True)

