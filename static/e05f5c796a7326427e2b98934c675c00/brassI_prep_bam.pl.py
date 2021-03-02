from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Brassi_Prep_Bam_Pl_V0_1_0 = CommandToolBuilder(tool="brassI_prep_bam.pl", base_command=["brassI_prep_bam.pl"], inputs=[ToolInput(tag="in_bas", input_type=Boolean(optional=True), prefix="-bas", doc=InputDocumentation(doc="Bas statistics file for BAM being streame")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="-prefix", doc=InputDocumentation(doc="Prefix all readgroup IDs with this text to force unique between samples, (e.g. T, N)\n- csv")), ToolInput(tag="in_norm_panel", input_type=Boolean(optional=True), prefix="-norm_panel", doc=InputDocumentation(doc="For generation of normal panel input only")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="-man", doc=InputDocumentation(doc="Full documentation.")), ToolInput(tag="in_example", input_type=String(), position=0, doc=InputDocumentation(doc="... | brassI_prep_bam.pl -b my.bam.bas -e NC_007605,hs37d5,GL% | <some digesting process>")), ToolInput(tag="in_optional", input_type=String(), position=0, doc=InputDocumentation(doc="-include      -i    Include reads where self and mate are mapped to this ref name (or unmapped)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Brassi_Prep_Bam_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

