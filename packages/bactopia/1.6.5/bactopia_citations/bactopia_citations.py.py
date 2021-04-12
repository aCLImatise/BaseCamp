from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String

Bactopia_Citations_Py_V0_1_0 = CommandToolBuilder(tool="bactopia_citations.py", base_command=["bactopia-citations.py"], inputs=[ToolInput(tag="in_directory_where_repository", input_type=Directory(optional=True), prefix="--bactopia", doc=InputDocumentation(doc="Directory where Bactopia repository is stored.")), ToolInput(tag="in_var_1", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_citations", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bactopia:1.6.5--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bactopia_Citations_Py_V0_1_0().translate("wdl")

