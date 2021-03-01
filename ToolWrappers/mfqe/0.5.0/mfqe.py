from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Mfqe_V0_1_0 = CommandToolBuilder(tool="mfqe", base_command=["mfqe"], inputs=[ToolInput(tag="in_input_fast_q", input_type=File(optional=True), prefix="--input-fastq", doc=InputDocumentation(doc=": Use this file as input FASTQ [default: Use STDIN]")), ToolInput(tag="in_output_uncompressed", input_type=Boolean(optional=True), prefix="--output-uncompressed", doc=InputDocumentation(doc="Output sequences uncompressed [default: gzip compress outputs]")), ToolInput(tag="in_fast_a_read_name_lists", input_type=String(optional=True), prefix="--fasta-read-name-lists", doc=InputDocumentation(doc="...\nList of files each containing sequence IDs [alias for --sequence-name-lists]")), ToolInput(tag="in_fast_q_read_name_lists", input_type=String(optional=True), prefix="--fastq-read-name-lists", doc=InputDocumentation(doc="...\nList of files each containing sequence IDs [alias for --sequence-name-lists]")), ToolInput(tag="in_input_fast_a", input_type=File(optional=True), prefix="--input-fasta", doc=InputDocumentation(doc="File containing uncompressed input FASTA sequences [default: Use STDIN]")), ToolInput(tag="in_output_fast_a_files", input_type=String(optional=True), prefix="--output-fasta-files", doc=InputDocumentation(doc="...          List of files to write FASTA to")), ToolInput(tag="in_output_fast_q_files", input_type=String(optional=True), prefix="--output-fastq-files", doc=InputDocumentation(doc="...          List of files to write FASTQ to")), ToolInput(tag="in_sequence_name_lists", input_type=String(optional=True), prefix="--sequence-name-lists", doc=InputDocumentation(doc="...        List of files each containing sequence IDs")), ToolInput(tag="in_usage", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_for", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_q", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mfqe_V0_1_0().translate("wdl", allow_empty_container=True)

