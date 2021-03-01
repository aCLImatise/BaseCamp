from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Snpit_Run_Py_V0_1_0 = CommandToolBuilder(tool="snpit_run.py", base_command=["snpit-run.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="the path to the VCF or FASTA file to read and classify\n(either can be bzip2ed/gzipped)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snpit_Run_Py_V0_1_0().translate("wdl", allow_empty_container=True)

