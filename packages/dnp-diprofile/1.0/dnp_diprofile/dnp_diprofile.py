from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Dnp_Diprofile_V0_1_0 = CommandToolBuilder(tool="dnp_diprofile", base_command=["dnp-diprofile"], inputs=[ToolInput(tag="in_version_check", input_type=Boolean(optional=True), prefix="--version-check", doc=InputDocumentation(doc="Turn this option off to disable version update notifications of the\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1.")), ToolInput(tag="in_dinucleotide", input_type=File(optional=True), prefix="--dinucleotide", doc=InputDocumentation(doc="Dinucleotide to compute a frequency profile in fasta file. One of\nAA, AC, AG, AT, CA, CC, CG, CT, GA, GC, GG, GT, TA, TC, TG, and TT.\nDefault: AA.")), ToolInput(tag="in_seq_length", input_type=Int(optional=True), prefix="--seqlength", doc=InputDocumentation(doc="Sequence length in fasta file. In range [25..600]. Default: 600.")), ToolInput(tag="in_complement", input_type=Boolean(optional=True), prefix="--complement", doc=InputDocumentation(doc="Perform computation on COMPLEMENTARY sequences of the strings in\nfasta file.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print parameters and variables.")), ToolInput(tag="in_position_dot", input_type=String(), position=0, doc=InputDocumentation(doc="REQUIRED ARGUMENTS"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dnp_Diprofile_V0_1_0().translate("wdl", allow_empty_container=True)

