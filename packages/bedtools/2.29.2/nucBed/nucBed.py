from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Nucbed_V0_1_0 = CommandToolBuilder(tool="nucBed", base_command=["nucBed"], inputs=[ToolInput(tag="in_fi", input_type=Boolean(optional=True), prefix="-fi", doc=InputDocumentation(doc="Input FASTA file")), ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="-bed", doc=InputDocumentation(doc="BED/GFF/VCF file of ranges to extract from -fi")), ToolInput(tag="in_profile_sequence_according", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Profile the sequence according to strand.")), ToolInput(tag="in_seq", input_type=Boolean(optional=True), prefix="-seq", doc=InputDocumentation(doc="Print the extracted sequence")), ToolInput(tag="in_pattern", input_type=Boolean(optional=True), prefix="-pattern", doc=InputDocumentation(doc="Report the number of times a user-defined sequence\nis observed (case-sensitive).")), ToolInput(tag="in_ignore_case_pattern", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="Ignore case when matching -pattern. By defaulty, case matters.")), ToolInput(tag="in_full_header", input_type=Boolean(optional=True), prefix="-fullHeader", doc=InputDocumentation(doc="Use full fasta header.\n- By default, only the word before the first space or tab is used.")), ToolInput(tag="in_bed_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_nuc", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nucbed_V0_1_0().translate("wdl", allow_empty_container=True)

