from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Bedtools_Maskfasta_V0_1_0 = CommandToolBuilder(tool="bedtools_maskfasta", base_command=["bedtools", "maskfasta"], inputs=[ToolInput(tag="in_fi", input_type=Boolean(optional=True), prefix="-fi", doc=InputDocumentation(doc="Input FASTA file")), ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="-bed", doc=InputDocumentation(doc="BED/GFF/VCF file of ranges to mask in -fi")), ToolInput(tag="in_fo", input_type=File(optional=True), prefix="-fo", doc=InputDocumentation(doc="Output FASTA file")), ToolInput(tag="in_soft", input_type=Boolean(optional=True), prefix="-soft", doc=InputDocumentation(doc="Enforce 'soft' masking.\nMask with lower-case bases, instead of masking with Ns.")), ToolInput(tag="in_mc", input_type=Boolean(optional=True), prefix="-mc", doc=InputDocumentation(doc="Replace masking character.\nUse another character, instead of masking with Ns.")), ToolInput(tag="in_full_header", input_type=Boolean(optional=True), prefix="-fullHeader", doc=InputDocumentation(doc="Use full fasta header.\nBy default, only the word before the first space or tab\nis used.\n"))], outputs=[ToolOutput(tag="out_fo", output_type=File(optional=True), selector=InputSelector(input_to_select="in_fo", type_hint=File()), doc=OutputDocumentation(doc="Output FASTA file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtools_Maskfasta_V0_1_0().translate("wdl", allow_empty_container=True)

