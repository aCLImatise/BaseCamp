from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, Boolean

Moca_Find_Motifs_V0_1_0 = CommandToolBuilder(tool="moca_find_motifs", base_command=["moca", "find_motifs"], inputs=[ToolInput(tag="in_bed_file", input_type=File(optional=True), prefix="--bedfile", doc=InputDocumentation(doc="Bed file input  [required]")), ToolInput(tag="in_oc", input_type=Directory(optional=True), prefix="--oc", doc=InputDocumentation(doc="Output Directory  [required]")), ToolInput(tag="in_configuration", input_type=File(optional=True), prefix="--configuration", doc=InputDocumentation(doc="Configuration file  [required]")), ToolInput(tag="in_slop_length", input_type=Int(optional=True), prefix="--slop-length", doc=InputDocumentation(doc="Flanking sequence length")), ToolInput(tag="in_flank_motif", input_type=Int(optional=True), prefix="--flank-motif", doc=InputDocumentation(doc="Length of sequence flanking motif")), ToolInput(tag="in_n_motif", input_type=Int(optional=True), prefix="--n-motif", doc=InputDocumentation(doc="Number of motifs")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Number of parallel MEME jobs  [required]")), ToolInput(tag="in_genome_build", input_type=File(optional=True), prefix="--genome-build", doc=InputDocumentation(doc="Key denoting genome build to use in\nconfiguration file  [required]")), ToolInput(tag="in_show_progress", input_type=Boolean(optional=True), prefix="--show-progress", doc=InputDocumentation(doc="Print progress"))], outputs=[ToolOutput(tag="out_oc", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_oc", type_hint=File()), doc=OutputDocumentation(doc="Output Directory  [required]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Moca_Find_Motifs_V0_1_0().translate("wdl", allow_empty_container=True)

