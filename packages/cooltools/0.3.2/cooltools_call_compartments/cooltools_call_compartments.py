from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Cooltools_Call_Compartments_V0_1_0 = CommandToolBuilder(tool="cooltools_call_compartments", base_command=["cooltools", "call-compartments"], inputs=[ToolInput(tag="in_reference_track", input_type=File(optional=True), prefix="--reference-track", doc=InputDocumentation(doc="Reference track for orienting and ranking")), ToolInput(tag="in_n_e_igs", input_type=Int(optional=True), prefix="--n-eigs", doc=InputDocumentation(doc="Number of eigenvectors to compute.  [default: 3]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Enable verbose output")), ToolInput(tag="in_out_prefix", input_type=File(optional=True), prefix="--out-prefix", doc=InputDocumentation(doc="Save compartment track as a BED-like file.\n[required]")), ToolInput(tag="in_bigwig", input_type=Boolean(optional=True), prefix="--bigwig", doc=InputDocumentation(doc="Also save compartment track as a bigWig file.")), ToolInput(tag="in_track_name_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Options:")), ToolInput(tag="in_eigenvectors", input_type=String(), position=1, doc=InputDocumentation(doc="--contact-type [cis|trans]  Type of the contacts perform eigen-value"))], outputs=[], container="quay.io/biocontainers/cooltools:0.3.2--py36h29c9776_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cooltools_Call_Compartments_V0_1_0().translate("wdl")

