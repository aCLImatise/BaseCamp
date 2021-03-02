from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Scalap_V0_1_0 = CommandToolBuilder(tool="scalap", base_command=["scalap"], inputs=[ToolInput(tag="in_private", input_type=Boolean(optional=True), prefix="-private", doc=InputDocumentation(doc="print private definitions")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="print out additional information")), ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="print out the version number of scalap")), ToolInput(tag="in_classpath", input_type=File(optional=True), prefix="-classpath", doc=InputDocumentation(doc="specify where to find user class files")), ToolInput(tag="in_cp", input_type=File(optional=True), prefix="-cp", doc=InputDocumentation(doc="specify where to find user class files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scalap_V0_1_0().translate("wdl", allow_empty_container=True)

