from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Huge_Delete_Pl_V0_1_0 = CommandToolBuilder(tool="huge_delete.pl", base_command=["huge-delete.pl"], inputs=[ToolInput(tag="in_remove", input_type=String(optional=True), prefix="--remove", doc=InputDocumentation(doc="Bigrams with counts < L will be removed from sample.")), ToolInput(tag="in_u_remove", input_type=String(optional=True), prefix="--uremove", doc=InputDocumentation(doc="Bigrams with counts > L will be removed from sample.")), ToolInput(tag="in_frequency", input_type=String(optional=True), prefix="--frequency", doc=InputDocumentation(doc="Bigrams with counts < F will not be displayed.")), ToolInput(tag="in_u_frequency", input_type=String(optional=True), prefix="--ufrequency", doc=InputDocumentation(doc="Bigrams with counts > F will not be displayed.")), ToolInput(tag="in_source", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_destination", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Huge_Delete_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

