from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Float

Makebloom_V0_1_0 = CommandToolBuilder(tool="makeBloom", base_command=["makeBloom"], inputs=[ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Fasta input file. Mandatory option.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file, with NO extension. Mandatory option.")), ToolInput(tag="in_km_er_size", input_type=Boolean(optional=True), prefix="--kmersize", doc=InputDocumentation(doc="kmer size, number or elements. Optional(default = 25)")), ToolInput(tag="in_fal_pos_rate", input_type=Float(optional=True), prefix="--fal_pos_rate", doc=InputDocumentation(doc="positive rate. Optional (default = 0.05)")), ToolInput(tag="in_hash_num", input_type=Boolean(optional=True), prefix="--hashNum", doc=InputDocumentation(doc="number of hash functions used. Optional (default\nvalue computed from the false positive rate).")), ToolInput(tag="in_bf_size_bits", input_type=Boolean(optional=True), prefix="--bfsizeBits", doc=InputDocumentation(doc="size of the filter in bits. It will be forced to be\na multiple of 8. Optional (default value computed\nfrom the false positive rate)."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file, with NO extension. Mandatory option."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makebloom_V0_1_0().translate("wdl", allow_empty_container=True)

