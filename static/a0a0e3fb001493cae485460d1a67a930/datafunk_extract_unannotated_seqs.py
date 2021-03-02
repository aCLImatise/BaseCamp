from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Datafunk_Extract_Unannotated_Seqs_V0_1_0 = CommandToolBuilder(tool="datafunk_extract_unannotated_seqs", base_command=["datafunk", "extract_unannotated_seqs"], inputs=[ToolInput(tag="in_input_fast_a", input_type=File(optional=True), prefix="--input-fasta", doc=InputDocumentation(doc="fasta file to extract sequences from")), ToolInput(tag="in_input_metadata", input_type=String(optional=True), prefix="--input-metadata", doc=InputDocumentation(doc="metadata whose columns and rows will be checked")), ToolInput(tag="in_null_column", input_type=String(optional=True), prefix="--null-column", doc=InputDocumentation(doc="metadata column which will be checked as empty")), ToolInput(tag="in_index_column", input_type=File(optional=True), prefix="--index-column", doc=InputDocumentation(doc="metadata column to match to fasta file")), ToolInput(tag="in_output_fast_a", input_type=File(optional=True), prefix="--output-fasta", doc=InputDocumentation(doc="fasta file to write\n")), ToolInput(tag="in_output_metadata", input_type=File(optional=True), prefix="--output-metadata", doc=InputDocumentation(doc="")), ToolInput(tag="in_output_tree", input_type=File(optional=True), prefix="--output-tree", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_tree", input_type=File(optional=True), prefix="--input-tree", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Datafunk_Extract_Unannotated_Seqs_V0_1_0().translate("wdl")

