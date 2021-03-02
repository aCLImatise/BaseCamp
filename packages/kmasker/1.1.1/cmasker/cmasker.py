from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Cmasker_V0_1_0 = CommandToolBuilder(tool="cmasker", base_command=["cmasker"], inputs=[ToolInput(tag="in_fasta_input", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="FASTA Input")), ToolInput(tag="in_jellfish_database", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc="Jellfish Database")), ToolInput(tag="in_create_occ_output", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Create OCC output")), ToolInput(tag="in_normalize_value", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Normalize Value")), ToolInput(tag="in_rt_value_masking", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="RT Value for masking threshold")), ToolInput(tag="in_strict_mode_mask", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Strict mode: Mask the whole k-mer in the query sequence instead of the single nucleotide")), ToolInput(tag="in_prefix_for_outfiles", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Prefix for the outfiles")), ToolInput(tag="in_suppress_fasta_output", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Suppress FASTA output")), ToolInput(tag="in_c_masker", input_type=String(), position=0, doc=InputDocumentation(doc="-h      Shows this help"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cmasker_V0_1_0().translate("wdl", allow_empty_container=True)

