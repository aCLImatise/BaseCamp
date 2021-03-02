from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Flye_Samtools_Dict_V0_1_0 = CommandToolBuilder(tool="flye_samtools_dict", base_command=["flye-samtools", "dict"], inputs=[ToolInput(tag="in_assembly", input_type=String(optional=True), prefix="--assembly", doc=InputDocumentation(doc="assembly")), ToolInput(tag="in_no_header", input_type=Boolean(optional=True), prefix="--no-header", doc=InputDocumentation(doc="do not print @HD line")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="file to write out dict file [stdout]")), ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="species")), ToolInput(tag="in_uri", input_type=File(optional=True), prefix="--uri", doc=InputDocumentation(doc="URI [file:///abs/path/to/file.fa]")), ToolInput(tag="in_sam_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_dict", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_filed_otf_a_vertical_line_file_dot_fado_tgz", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="file to write out dict file [stdout]"))], container="quay.io/biocontainers/flye:2.8.3--py38h1c8e9b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flye_Samtools_Dict_V0_1_0().translate("wdl")

