from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Megalodon_Extras_Modified_Bases_Create_Motif_Bed_V0_1_0 = CommandToolBuilder(tool="megalodon_extras_modified_bases_create_motif_bed", base_command=["megalodon_extras", "modified_bases", "create_motif_bed"], inputs=[ToolInput(tag="in_motif", input_type=Boolean(optional=True), prefix="--motif", doc=InputDocumentation(doc="['MOTIF', 'REL_POS'] ['MOTIF', 'REL_POS']\nMotif description. Motifs include two values\nspecifying the sequence motif (may include ambiguity\ncodes) and the relative modified position. Multiple\n`--motif` values may be provided.")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--out-filename", doc=InputDocumentation(doc="Output BED filename. Default: motif_sites.bed\n"))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="Output BED filename. Default: motif_sites.bed\n"))], container="quay.io/biocontainers/megalodon:2.3.0--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megalodon_Extras_Modified_Bases_Create_Motif_Bed_V0_1_0().translate("wdl")

