from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String

Opal_Stats_Py_V0_1_0 = CommandToolBuilder(tool="opal_stats.py", base_command=["opal_stats.py"], inputs=[ToolInput(tag="in_input_dir", input_type=Directory(optional=True), prefix="--input_dir", doc=InputDocumentation(doc="Input directory containing gzipped FASTQ files")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_yaml", input_type=File(optional=True), prefix="--yaml", doc=InputDocumentation(doc="Bioboxes YAML file (default: INPUT_DIR/biobox.yaml)")), ToolInput(tag="in_volume", input_type=String(optional=True), prefix="--volume", doc=InputDocumentation(doc="Docker volume"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container="quay.io/biocontainers/cami-opal:1.0.9--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Opal_Stats_Py_V0_1_0().translate("wdl")

