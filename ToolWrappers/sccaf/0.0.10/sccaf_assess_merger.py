from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File

Sccaf_Assess_Merger_V0_1_0 = CommandToolBuilder(tool="sccaf_assess_merger", base_command=["sccaf-assess-merger"], inputs=[ToolInput(tag="in_input_directory", input_type=Directory(optional=True), prefix="--input-directory", doc=InputDocumentation(doc="Path to input directory where asses results are")), ToolInput(tag="in_rounds_file", input_type=File(optional=True), prefix="--rounds-file", doc=InputDocumentation(doc="File listing rounds ordered")), ToolInput(tag="in_output_plot", input_type=File(optional=True), prefix="--output-plot", doc=InputDocumentation(doc="Path for merged assessment plot. Extension determines\nformat (pdf/png).\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sccaf_Assess_Merger_V0_1_0().translate("wdl", allow_empty_container=True)

