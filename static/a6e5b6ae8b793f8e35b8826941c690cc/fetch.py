from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Fetch_V0_1_0 = CommandToolBuilder(tool="fetch", base_command=["fetch"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Use <file> as configuration file")), ToolInput(tag="in_width_fasta_output", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="Width of FASTA output [80]")), ToolInput(tag="in_produce_fasta_output", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Produce FASTA output")), ToolInput(tag="in_generate_crc_checksums", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Generate CRC64 checksums")), ToolInput(tag="in_reverse_complement_sequence", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Reverse complement sequence (implies -f)")), ToolInput(tag="in_keep_query_name", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="Keep query name as FASTA header (implies -f)")), ToolInput(tag="in_print_entries_when", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="Print all entries when multiple are found")), ToolInput(tag="in_append_sequence_length", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="Append sequence length (; LEN=n) to the FASTA header"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fetch_V0_1_0().translate("wdl", allow_empty_container=True)

