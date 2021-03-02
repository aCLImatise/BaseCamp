from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Edamdef_V0_1_0 = CommandToolBuilder(tool="edamdef", base_command=["edamdef"], inputs=[ToolInput(tag="in_namespace", input_type=Boolean(optional=True), prefix="-namespace", doc=InputDocumentation(doc="menu       [*] By default all terms are returned.\nSearches can be limited to one or a few\nnamespaces. (Values: data (Data entity);\nentity (Biological entity); format (Data\nformat); identifier (Identifier); operation\n(Bioinformatics operation); resource (Data\nresource); topic (Field of bioinformatics\nstudy))")), ToolInput(tag="in_subclasses", input_type=Boolean(optional=True), prefix="-subclasses", doc=InputDocumentation(doc="boolean    [N] Extend the query matches to include all\nterms which are specialisations (EDAM\nsub-classes) of the matched type.")), ToolInput(tag="in_obsolete", input_type=Boolean(optional=True), prefix="-obsolete", doc=InputDocumentation(doc="boolean    [N] The default behaviour is to not use or\nreturn obsolete terms. This option if set\nwill include all terms."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Edamdef_V0_1_0().translate("wdl", allow_empty_container=True)

