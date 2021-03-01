from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dnp_Binstrings_V0_1_0 = CommandToolBuilder(tool="dnp_binstrings", base_command=["dnp-binstrings"], inputs=[ToolInput(tag="in_version_check", input_type=Boolean(optional=True), prefix="--version-check", doc=InputDocumentation(doc="Turn this option off to disable version update notifications of the\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1.")), ToolInput(tag="in_dinucleotide", input_type=String(optional=True), prefix="--dinucleotide", doc=InputDocumentation(doc="Dinucleotide that is to identify in fasta sequences One of AA, AC,\nAG, AT, CA, CC, CG, CT, GA, GC, GG, GT, TA, TC, TG, and TT. Default:\nCC.")), ToolInput(tag="in_appearance_dot", input_type=String(), position=0, doc=InputDocumentation(doc="REQUIRED ARGUMENTS"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dnp_Binstrings_V0_1_0().translate("wdl", allow_empty_container=True)

