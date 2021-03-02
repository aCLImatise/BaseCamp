from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Array, Int, File

Phyluce_Align_Filter_Alignments_V0_1_0 = CommandToolBuilder(tool="phyluce_align_filter_alignments", base_command=["phyluce_align_filter_alignments"], inputs=[ToolInput(tag="in_alignments", input_type=Directory(optional=True), prefix="--alignments", doc=InputDocumentation(doc="The directory containing the alignment files")), ToolInput(tag="in_directory_write_alignments", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The directory to write alignments meeting criteria.")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="The input alignment format")), ToolInput(tag="in_containing_data_for", input_type=Array(t=String(), optional=True), prefix="--containing-data-for", doc=InputDocumentation(doc="Output only alignments --containing-data-for a taxon")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min-length", doc=InputDocumentation(doc="Filter out alignments shorter than --min-length")), ToolInput(tag="in_min_tax_a", input_type=Int(optional=True), prefix="--min-taxa", doc=InputDocumentation(doc="Filter out alignments with fewer than --min-taxa")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use.")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs.")), ToolInput(tag="in_var_8", input_type=String(), position=0, doc=InputDocumentation(doc="[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Filter_Alignments_V0_1_0().translate("wdl", allow_empty_container=True)

