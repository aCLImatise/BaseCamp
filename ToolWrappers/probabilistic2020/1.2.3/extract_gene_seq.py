from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Extract_Gene_Seq_V0_1_0 = CommandToolBuilder(tool="extract_gene_seq", base_command=["extract_gene_seq"], inputs=[ToolInput(tag="in_log_level", input_type=File(optional=True), prefix="--log-level", doc=InputDocumentation(doc="Write a log file (--log-level=DEBUG for debug mode,\n--log-level=INFO for info mode)")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Path to log file. (accepts stdout)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Flag for more verbose log output")), ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Human genome FASTA file")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="BED file annotation of genes")), ToolInput(tag="in_output_single_file", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output a single FASTA file with gene sequences\n")), ToolInput(tag="in_extracts_gene_sequences", input_type=String(), position=0, doc=InputDocumentation(doc="Extracts gene sequences from a genomic FASTA file"))], outputs=[ToolOutput(tag="out_output_single_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_single_file", type_hint=File()), doc=OutputDocumentation(doc="Output a single FASTA file with gene sequences\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Gene_Seq_V0_1_0().translate("wdl", allow_empty_container=True)

