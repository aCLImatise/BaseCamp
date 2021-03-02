from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ontoget_V0_1_0 = CommandToolBuilder(tool="ontoget", base_command=["ontoget"], inputs=[ToolInput(tag="in_subclasses", input_type=Boolean(optional=True), prefix="-subclasses", doc=InputDocumentation(doc="boolean    [N] Extend the query matches to include all\nterms which are specialisations\n(sub-classes) of the matched terms.")), ToolInput(tag="in_obsolete", input_type=Boolean(optional=True), prefix="-obsolete", doc=InputDocumentation(doc="boolean    [N] The default behaviour is to not use or\nreturn obsolete terms. This option if set\nwill include all terms."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ontoget_V0_1_0().translate("wdl", allow_empty_container=True)

