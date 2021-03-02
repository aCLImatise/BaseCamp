from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Rmapbs_V0_1_0 = CommandToolBuilder(tool="rmapbs", base_command=["rmapbs"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="-output", doc=InputDocumentation(doc="output file name")), ToolInput(tag="in_chrom", input_type=Boolean(optional=True), prefix="-chrom", doc=InputDocumentation(doc="chromosomes in FASTA file or dir")), ToolInput(tag="in_start", input_type=Boolean(optional=True), prefix="-start", doc=InputDocumentation(doc="index of first read to map")), ToolInput(tag="in_number", input_type=Boolean(optional=True), prefix="-number", doc=InputDocumentation(doc="number of reads to map")), ToolInput(tag="in_suffix", input_type=Boolean(optional=True), prefix="-suffix", doc=InputDocumentation(doc="suffix of chrom files (assumes dir provided)")), ToolInput(tag="in_mismatch", input_type=Boolean(optional=True), prefix="-mismatch", doc=InputDocumentation(doc="maximum allowed mismatches")), ToolInput(tag="in_ambiguous", input_type=Boolean(optional=True), prefix="-ambiguous", doc=InputDocumentation(doc="file to write names of ambiguously mapped reads")), ToolInput(tag="in_max_map", input_type=Boolean(optional=True), prefix="-max-map", doc=InputDocumentation(doc="maximum allowed mappings for a read")), ToolInput(tag="in_ag_wild", input_type=Boolean(optional=True), prefix="-ag-wild", doc=InputDocumentation(doc="map using A/G bisulfite wildcards")), ToolInput(tag="in_clip", input_type=Boolean(optional=True), prefix="-clip", doc=InputDocumentation(doc="clip the specified adaptor")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="print more run info")), ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="-about", doc=InputDocumentation(doc="print about message")), ToolInput(tag="in_fast_q_reads_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rmapbs_V0_1_0().translate("wdl", allow_empty_container=True)

