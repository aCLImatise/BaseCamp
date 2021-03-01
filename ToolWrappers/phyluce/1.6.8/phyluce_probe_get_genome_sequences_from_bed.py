from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Phyluce_Probe_Get_Genome_Sequences_From_Bed_V0_1_0 = CommandToolBuilder(tool="phyluce_probe_get_genome_sequences_from_bed", base_command=["phyluce_probe_get_genome_sequences_from_bed"], inputs=[ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="The input BED file")), ToolInput(tag="in_two_bit", input_type=Int(optional=True), prefix="--twobit", doc=InputDocumentation(doc="The input genome to slice in UCSC 2bit format")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The output fasta file")), ToolInput(tag="in_filter_mask", input_type=String(optional=True), prefix="--filter-mask", doc=InputDocumentation(doc="Filter strings with > X frequency of masked bases")), ToolInput(tag="in_max_n", input_type=Int(optional=True), prefix="--max-n", doc=InputDocumentation(doc="The maximum number of ambiguous bases ('N') to accept")), ToolInput(tag="in_buffer_to", input_type=Int(optional=True), prefix="--buffer-to", doc=InputDocumentation(doc="The length to which to buffer the extracted sequences\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output fasta file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Probe_Get_Genome_Sequences_From_Bed_V0_1_0().translate("wdl", allow_empty_container=True)

