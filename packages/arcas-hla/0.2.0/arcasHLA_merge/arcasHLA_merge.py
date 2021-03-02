from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Arcashla_Merge_V0_1_0 = CommandToolBuilder(tool="arcasHLA_merge", base_command=["arcasHLA", "merge"], inputs=[ToolInput(tag="in_in_dir", input_type=Boolean(optional=True), prefix="--indir", doc=InputDocumentation(doc="directory containing arcasHLA files")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="out directory")), ToolInput(tag="in_run", input_type=Boolean(optional=True), prefix="--run", doc=InputDocumentation(doc="run name"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="out directory"))], container="quay.io/biocontainers/arcas-hla:0.2.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arcashla_Merge_V0_1_0().translate("wdl")

