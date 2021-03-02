from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Bl_Fastq2Fasta_V0_1_0 = CommandToolBuilder(tool="bl_fastq2fasta", base_command=["bl-fastq2fasta"], inputs=[ToolInput(tag="in_specify_multiple_input_files", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="specify multiple FASTQ input files")), ToolInput(tag="in_specify_multiple_corresponding_output_files", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="specify multiple (corresponding) FASTA output files")), ToolInput(tag="in_specify_multiple_corresponding_qual_files", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="specify multiple (corresponding) QUAL output files")), ToolInput(tag="in_print_ascii_quality", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="print ASCII quality scores (default: numerical scores)")), ToolInput(tag="in_use_offset_default", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="use OFFSET for converting ASCII quality scores (default: 33)")), ToolInput(tag="in_reformat_id_line", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="reformat the ID line by replacing everything after a space, tab or / with\nwith the specified SUFFIX\n")), ToolInput(tag="in_fast_q_two_fast_a", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bl_Fastq2Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

