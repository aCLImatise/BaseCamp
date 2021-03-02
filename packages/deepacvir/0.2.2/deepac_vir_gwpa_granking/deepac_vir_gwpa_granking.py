from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, Int, String

Deepac_Vir_Gwpa_Granking_V0_1_0 = CommandToolBuilder(tool="deepac_vir_gwpa_granking", base_command=["deepac-vir", "gwpa", "granking"], inputs=[ToolInput(tag="in_patho_dir", input_type=Directory(optional=True), prefix="--patho-dir", doc=InputDocumentation(doc="Directory containing the pathogenicity scores over all\ngenomic regions per species (.bedgraph)")), ToolInput(tag="in_gff_dir", input_type=Directory(optional=True), prefix="--gff-dir", doc=InputDocumentation(doc="Directory containing the annotation data of the\nspecies (.gff)")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_extended", input_type=Boolean(optional=True), prefix="--extended", doc=InputDocumentation(doc="Check for multiple CDSs per gene and unnamed genes.")), ToolInput(tag="in_n_cpus", input_type=Int(optional=True), prefix="--n-cpus", doc=InputDocumentation(doc="Number of CPU cores.\n")), ToolInput(tag="in_deep_ac", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gwp_a", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_g_ranking", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container="quay.io/biocontainers/deepacvir:0.2.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Vir_Gwpa_Granking_V0_1_0().translate("wdl")

