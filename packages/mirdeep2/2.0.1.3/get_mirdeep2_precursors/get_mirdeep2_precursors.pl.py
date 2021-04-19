from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Get_Mirdeep2_Precursors_Pl_V0_1_0 = CommandToolBuilder(tool="get_mirdeep2_precursors.pl", base_command=["get_mirdeep2_precursors.pl"], inputs=[ToolInput(tag="in_s", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[int]        output only precursors with min-score >= [int]")), ToolInput(tag="in_var_1", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="[int]        output only precursors with score     <  [int]")), ToolInput(tag="in_output_dna_rna", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="output dna instead of rna")), ToolInput(tag="in_make_d_only", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="make simple id with the name only")), ToolInput(tag="in_getmature_instead_precursor", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="get_mature instead of precursor")), ToolInput(tag="in_getstar_instead_precursor", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="get_star instead of precursor")), ToolInput(tag="in_trackname_for_bedfiles", input_type=Boolean(optional=True), prefix="-T", doc=InputDocumentation(doc="Trackname for bedfiles")), ToolInput(tag="in_outdir", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="outdir")), ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Mirdeep2_Precursors_Pl_V0_1_0().translate("wdl")

