from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String

Prokka_Clusters_To_Hmm_V0_1_0 = CommandToolBuilder(tool="prokka_clusters_to_hmm", base_command=["prokka-clusters_to_hmm"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="!      Verbose output (default '0').")), ToolInput(tag="in_dir", input_type=Directory(optional=True), prefix="--dir", doc=InputDocumentation(doc="Source CLUSTERS folder (default '/bio/data/CLUSTERS/latest').")), ToolInput(tag="in_lib", input_type=String(optional=True), prefix="--lib", doc=InputDocumentation(doc="Library: PHA PRK ... (default '').")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output folder for .hmm files and indices (default '.')."))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output folder for .hmm files and indices (default '.')."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prokka_Clusters_To_Hmm_V0_1_0().translate("wdl", allow_empty_container=True)

