from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Int, Boolean

Deepac_Gwpa_Fenrichment_V0_1_0 = CommandToolBuilder(tool="deepac_gwpa_fenrichment", base_command=["deepac", "gwpa", "fenrichment"], inputs=[ToolInput(tag="in_bed_dir", input_type=Directory(optional=True), prefix="--bed-dir", doc=InputDocumentation(doc="Input directory with filter activation values for a\nspecies (.bed)")), ToolInput(tag="in_gff", input_type=File(optional=True), prefix="--gff", doc=InputDocumentation(doc="Gff file of species")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_motif_length", input_type=Int(optional=True), prefix="--motif-length", doc=InputDocumentation(doc="Motif length")), ToolInput(tag="in_n_cpus", input_type=Int(optional=True), prefix="--n-cpus", doc=InputDocumentation(doc="Number of CPU cores.")), ToolInput(tag="in_extended", input_type=Boolean(optional=True), prefix="--extended", doc=InputDocumentation(doc="Check for multiple CDSs per gene and unnamed genes."))], outputs=[ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container="quay.io/biocontainers/deepac:0.13.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Gwpa_Fenrichment_V0_1_0().translate("wdl")

