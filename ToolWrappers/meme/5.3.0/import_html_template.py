from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Import_Html_Template_V0_1_0 = CommandToolBuilder(tool="import_html_template", base_command=["import-html-template"], inputs=[ToolInput(tag="in_variable_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_name", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Import_Html_Template_V0_1_0().translate("wdl")

