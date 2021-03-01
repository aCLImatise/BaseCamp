from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String

Cnvkit_Py_Import_Picard_V0_1_0 = CommandToolBuilder(tool="cnvkit.py_import_picard", base_command=["cnvkit.py", "import-picard"], inputs=[ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Output directory name.\n")), ToolInput(tag="in_targets", input_type=String(), position=0, doc=InputDocumentation(doc="Sample coverage .csv files (target and antitarget)."))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory name.\n"))], container="quay.io/biocontainers/cnvkit:0.9.8--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnvkit_Py_Import_Picard_V0_1_0().translate("wdl")

