from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Fastafrombed_V0_1_0 = CommandToolBuilder(tool="fastaFromBed", base_command=["fastaFromBed"], inputs=[ToolInput(tag="in_fi", input_type=Boolean(optional=True), prefix="-fi", doc=InputDocumentation(doc="Input FASTA file")), ToolInput(tag="in_fo", input_type=File(optional=True), prefix="-fo", doc=InputDocumentation(doc="Output file (opt., default is STDOUT")), ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="-bed", doc=InputDocumentation(doc="BED/GFF/VCF file of ranges to extract from -fi")), ToolInput(tag="in_name_only", input_type=Boolean(optional=True), prefix="-nameOnly", doc=InputDocumentation(doc="Use the name field for the FASTA header")), ToolInput(tag="in_split", input_type=Boolean(optional=True), prefix="-split", doc=InputDocumentation(doc="Given BED12 fmt., extract and concatenate the sequences\nfrom the BED 'blocks' (e.g., exons)")), ToolInput(tag="in_tab", input_type=Boolean(optional=True), prefix="-tab", doc=InputDocumentation(doc="Write output in TAB delimited format.\n- Default is FASTA format.")), ToolInput(tag="in_force_strandedness_occupies", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Force strandedness. If the feature occupies the antisense,\nstrand, the sequence will be reverse complemented.\n- By default, strand information is ignored.")), ToolInput(tag="in_full_header", input_type=Boolean(optional=True), prefix="-fullHeader", doc=InputDocumentation(doc="Use full fasta header.\n- By default, only the word before the first space or tab\nis used.\n")), ToolInput(tag="in_bed_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_get_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_fo", output_type=File(optional=True), selector=InputSelector(input_to_select="in_fo", type_hint=File()), doc=OutputDocumentation(doc="Output file (opt., default is STDOUT"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastafrombed_V0_1_0().translate("wdl", allow_empty_container=True)

