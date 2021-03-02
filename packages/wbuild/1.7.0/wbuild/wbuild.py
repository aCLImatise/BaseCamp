from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Wbuild_V0_1_0 = CommandToolBuilder(tool="wbuild", base_command=["wbuild"], inputs=[ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Either CRITICAL, ERROR, WARNING, INFO or DEBUG")), ToolInput(tag="in_demo", input_type=String(), position=0, doc=InputDocumentation(doc="Setup a demo wBuild demo project")), ToolInput(tag="in_in_it", input_type=String(), position=1, doc=InputDocumentation(doc="Initialize the repository with wbuild.")), ToolInput(tag="in_update", input_type=String(), position=2, doc=InputDocumentation(doc="Update the .wBuild folder to the most recent version of wBuild"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wbuild_V0_1_0().translate("wdl", allow_empty_container=True)

